
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * proc_afs ;
 int remove_proc_entry (char*,int *) ;

void afs_proc_cleanup(void)
{
 remove_proc_entry("rootcell", proc_afs);
 remove_proc_entry("cells", proc_afs);
 remove_proc_entry("fs/afs", ((void*)0));
}
