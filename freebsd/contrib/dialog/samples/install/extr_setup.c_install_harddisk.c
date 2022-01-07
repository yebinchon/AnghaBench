
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; } ;


 int FALSE ;
 int dialog_clear () ;
 int dialog_input_result ;
 int dialog_inputbox (char*,char*,int,int,char*,int ) ;
 int extract_packages (int ) ;
 scalar_t__ my_system (char*,char const*,...) ;
 int null ;
 TYPE_1__* partitions ;
 int select_source_partition () ;
 int strdup (int ) ;

__attribute__((used)) static void
install_harddisk(void)
{
    const char *name;
    int part, ret;

    if ((part = select_source_partition()) <= -1)
 return;
    name = partitions[part].name;

    if (my_system("mount -t ext2 %s /source %s", name, null))
 return;
    ret = dialog_inputbox("Path in partition",
     "Please enter the directory in which the "
     "source files are.", 13, 50, "", FALSE);
    dialog_clear();
    if (ret != 0)
 return;

    extract_packages(strdup(dialog_input_result));
    if (my_system("umount /source %s", null))
 return;
}
