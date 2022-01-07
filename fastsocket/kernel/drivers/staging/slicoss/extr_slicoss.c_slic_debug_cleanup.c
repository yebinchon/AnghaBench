
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_remove (int *) ;
 int * slic_debugfs ;

__attribute__((used)) static void slic_debug_cleanup(void)
{
 if (slic_debugfs) {
  debugfs_remove(slic_debugfs);
  slic_debugfs = ((void*)0);
 }
}
