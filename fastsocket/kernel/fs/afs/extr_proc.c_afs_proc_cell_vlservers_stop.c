
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct afs_cell* private; } ;
struct afs_cell {int vl_sem; } ;


 int up_read (int *) ;

__attribute__((used)) static void afs_proc_cell_vlservers_stop(struct seq_file *p, void *v)
{
 struct afs_cell *cell = p->private;

 up_read(&cell->vl_sem);
}
