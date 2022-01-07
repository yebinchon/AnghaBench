
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int dialog_msgbox (char*,char*,int,int,int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,...) ;
 char* install_partition ;
 scalar_t__ my_system (char*,char const*) ;
 char const* null ;

__attribute__((used)) static void
extract_packages(const char *source_path)
{

    FILE *f;


    if (my_system("mkdir -p /install/var/installed/packages %s", null))
 return;
    if (my_system("cd /install; for i in /source%s/*.tgz; do "
    "tar xzplvvkf $i >> var/installed/packages/base "
    "2>>var/installed/packages/ERROR; done", source_path))
 return;

    if ((f = fopen("/install/etc/fstab", "w")) == ((void*)0)) {
           dialog_msgbox("Error", "Cannot write /etc/fstab",
    12, 40, 1);
 return;
    }
    fprintf(f, "%s / ext2 defaults 1 1\n", install_partition);
    fprintf(f, "none /proc proc defaults 0 2\n");

    fclose(f);

}
