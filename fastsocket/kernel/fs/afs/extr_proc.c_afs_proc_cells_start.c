
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int loff_t ;


 int afs_proc_cells ;
 int afs_proc_cells_sem ;
 int down_read (int *) ;
 void* seq_list_start_head (int *,int ) ;

__attribute__((used)) static void *afs_proc_cells_start(struct seq_file *m, loff_t *_pos)
{

 down_read(&afs_proc_cells_sem);
 return seq_list_start_head(&afs_proc_cells, *_pos);
}
