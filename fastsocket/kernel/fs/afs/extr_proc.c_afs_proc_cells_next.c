
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int loff_t ;


 int afs_proc_cells ;
 void* seq_list_next (void*,int *,int *) ;

__attribute__((used)) static void *afs_proc_cells_next(struct seq_file *p, void *v, loff_t *pos)
{
 return seq_list_next(v, &afs_proc_cells, pos);
}
