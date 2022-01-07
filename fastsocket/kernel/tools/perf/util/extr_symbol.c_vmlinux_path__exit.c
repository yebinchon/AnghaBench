
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int ******) ;
 int ****** vmlinux_path ;
 scalar_t__ vmlinux_path__nr_entries ;

__attribute__((used)) static void vmlinux_path__exit(void)
{
 while (--vmlinux_path__nr_entries >= 0) {
  free(vmlinux_path[vmlinux_path__nr_entries]);
  vmlinux_path[vmlinux_path__nr_entries] = ((void*)0);
 }

 free(vmlinux_path);
 vmlinux_path = ((void*)0);
}
