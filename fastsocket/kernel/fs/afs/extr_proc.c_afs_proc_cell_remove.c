
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_cell {char* name; int proc_dir; } ;


 int _enter (char*) ;
 int _leave (char*) ;
 int proc_afs ;
 int remove_proc_entry (char*,int ) ;

void afs_proc_cell_remove(struct afs_cell *cell)
{
 _enter("");

 remove_proc_entry("volumes", cell->proc_dir);
 remove_proc_entry("vlservers", cell->proc_dir);
 remove_proc_entry("servers", cell->proc_dir);
 remove_proc_entry(cell->name, proc_afs);

 _leave("");
}
