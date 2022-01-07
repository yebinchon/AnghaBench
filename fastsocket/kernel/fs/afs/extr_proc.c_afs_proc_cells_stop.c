
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int afs_proc_cells_sem ;
 int up_read (int *) ;

__attribute__((used)) static void afs_proc_cells_stop(struct seq_file *p, void *v)
{
 up_read(&afs_proc_cells_sem);
}
