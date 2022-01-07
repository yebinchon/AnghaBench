
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int dummy; } ;


 int ENOMEM ;
 int _enter (char*) ;
 int _leave (char*) ;
 int afs_proc_cells_fops ;
 int afs_proc_rootcell_fops ;
 int * proc_afs ;
 struct proc_dir_entry* proc_create (char*,int ,int *,int *) ;
 int * proc_mkdir (char*,int *) ;
 int remove_proc_entry (char*,int *) ;

int afs_proc_init(void)
{
 struct proc_dir_entry *p;

 _enter("");

 proc_afs = proc_mkdir("fs/afs", ((void*)0));
 if (!proc_afs)
  goto error_dir;

 p = proc_create("cells", 0, proc_afs, &afs_proc_cells_fops);
 if (!p)
  goto error_cells;

 p = proc_create("rootcell", 0, proc_afs, &afs_proc_rootcell_fops);
 if (!p)
  goto error_rootcell;

 _leave(" = 0");
 return 0;

error_rootcell:
  remove_proc_entry("cells", proc_afs);
error_cells:
 remove_proc_entry("fs/afs", ((void*)0));
error_dir:
 _leave(" = -ENOMEM");
 return -ENOMEM;
}
