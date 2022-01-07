
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct afs_cell* private; } ;
struct afs_cell {int vl_list; } ;
typedef int loff_t ;


 int _enter (char*,struct afs_cell*,int ) ;
 void* seq_list_next (void*,int *,int *) ;

__attribute__((used)) static void *afs_proc_cell_volumes_next(struct seq_file *p, void *v,
     loff_t *_pos)
{
 struct afs_cell *cell = p->private;

 _enter("cell=%p pos=%Ld", cell, *_pos);
 return seq_list_next(v, &cell->vl_list, _pos);
}
