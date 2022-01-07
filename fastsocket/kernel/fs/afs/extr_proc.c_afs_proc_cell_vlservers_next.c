
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct afs_cell* private; } ;
struct afs_cell {size_t vl_naddrs; void* vl_addrs; } ;
typedef size_t loff_t ;


 int _enter (char*,struct afs_cell*,size_t,size_t) ;

__attribute__((used)) static void *afs_proc_cell_vlservers_next(struct seq_file *p, void *v,
       loff_t *_pos)
{
 struct afs_cell *cell = p->private;
 loff_t pos;

 _enter("cell=%p{nad=%u} pos=%Ld", cell, cell->vl_naddrs, *_pos);

 pos = *_pos;
 (*_pos)++;
 if (pos >= cell->vl_naddrs)
  return ((void*)0);

 return &cell->vl_addrs[pos];
}
