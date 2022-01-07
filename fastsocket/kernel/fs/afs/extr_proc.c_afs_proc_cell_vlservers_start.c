
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct afs_cell* private; } ;
struct afs_cell {size_t vl_naddrs; void* vl_addrs; int vl_sem; } ;
typedef size_t loff_t ;


 int _enter (char*,struct afs_cell*,size_t) ;
 int down_read (int *) ;

__attribute__((used)) static void *afs_proc_cell_vlservers_start(struct seq_file *m, loff_t *_pos)
{
 struct afs_cell *cell = m->private;
 loff_t pos = *_pos;

 _enter("cell=%p pos=%Ld", cell, *_pos);


 down_read(&cell->vl_sem);


 if (!pos)
  return (void *) 1;
 pos--;

 if (pos >= cell->vl_naddrs)
  return ((void*)0);

 return &cell->vl_addrs[pos];
}
