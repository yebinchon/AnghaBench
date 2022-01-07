
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int dummy; } ;
struct afs_cell {char* name; int proc_dir; } ;


 int ENOMEM ;
 int _enter (char*,struct afs_cell*,char*) ;
 int _leave (char*) ;
 int afs_proc_cell_servers_fops ;
 int afs_proc_cell_vlservers_fops ;
 int afs_proc_cell_volumes_fops ;
 int proc_afs ;
 struct proc_dir_entry* proc_create_data (char*,int ,int ,int *,struct afs_cell*) ;
 int proc_mkdir (char*,int ) ;
 int remove_proc_entry (char*,int ) ;

int afs_proc_cell_setup(struct afs_cell *cell)
{
 struct proc_dir_entry *p;

 _enter("%p{%s}", cell, cell->name);

 cell->proc_dir = proc_mkdir(cell->name, proc_afs);
 if (!cell->proc_dir)
  goto error_dir;

 p = proc_create_data("servers", 0, cell->proc_dir,
        &afs_proc_cell_servers_fops, cell);
 if (!p)
  goto error_servers;

 p = proc_create_data("vlservers", 0, cell->proc_dir,
        &afs_proc_cell_vlservers_fops, cell);
 if (!p)
  goto error_vlservers;

 p = proc_create_data("volumes", 0, cell->proc_dir,
        &afs_proc_cell_volumes_fops, cell);
 if (!p)
  goto error_volumes;

 _leave(" = 0");
 return 0;

error_volumes:
 remove_proc_entry("vlservers", cell->proc_dir);
error_vlservers:
 remove_proc_entry("servers", cell->proc_dir);
error_servers:
 remove_proc_entry(cell->name, proc_afs);
error_dir:
 _leave(" = -ENOMEM");
 return -ENOMEM;
}
