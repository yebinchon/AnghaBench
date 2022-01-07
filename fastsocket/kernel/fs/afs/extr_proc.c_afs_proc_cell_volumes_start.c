
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct afs_cell* private; } ;
struct afs_cell {int vl_list; int vl_sem; } ;
typedef int loff_t ;


 int _enter (char*,struct afs_cell*,int ) ;
 int down_read (int *) ;
 void* seq_list_start_head (int *,int ) ;

__attribute__((used)) static void *afs_proc_cell_volumes_start(struct seq_file *m, loff_t *_pos)
{
 struct afs_cell *cell = m->private;

 _enter("cell=%p pos=%Ld", cell, *_pos);


 down_read(&cell->vl_sem);
 return seq_list_start_head(&cell->vl_list, *_pos);
}
