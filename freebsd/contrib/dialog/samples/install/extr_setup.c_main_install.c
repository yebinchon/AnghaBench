
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; } ;


 int dialog_clear () ;
 int dialog_menu (char*,char*,int,int,int,int,char**) ;
 int install_harddisk () ;
 int install_nfs () ;
 char const* install_partition ;
 int install_premounted () ;
 scalar_t__ my_system (char*,char const*,...) ;
 int null ;
 scalar_t__ num_linux ;
 TYPE_1__* partitions ;
 int select_install_partition () ;

__attribute__((used)) static void
main_install(void)
{
    int part, ret;
    const char *name;
    char *items1[] =
    {
 "1", "Harddisk Install",
 "2", "Network Install(NFS)",
 "3", "Premounted on /source"
    };

    if (num_linux == 0) {

 return;
    }
    if ((part = select_install_partition()) <= -1)
 return;
    install_partition = name = partitions[part].name;
    if (my_system("mke2fs %s %s", name, null))
 return;
    if (my_system("mount -t ext2 %s /install %s", name, null))
 return;
    ret = dialog_menu("Choose install medium",
        "\\nPlease say from where you want to install.\\n",
        12, 62, 3, 3, items1);
    dialog_clear();
    switch (ret) {
    case 0:
 install_harddisk();
 break;
    case 1:
 install_nfs();
 break;
    case 2:
 install_premounted();
 break;
    case -2:
    case -1:
 break;
    }
    if (my_system("umount /install %s", null))
 return;
}
