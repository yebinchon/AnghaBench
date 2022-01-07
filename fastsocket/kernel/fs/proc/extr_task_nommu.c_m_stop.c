
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct proc_maps_private* private; } ;
struct proc_maps_private {TYPE_1__* task; } ;
struct mm_struct {int mmap_sem; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 int mmput (struct mm_struct*) ;
 int put_task_struct (TYPE_1__*) ;
 int up_read (int *) ;

__attribute__((used)) static void m_stop(struct seq_file *m, void *_vml)
{
 struct proc_maps_private *priv = m->private;

 if (priv->task) {
  struct mm_struct *mm = priv->task->mm;
  up_read(&mm->mmap_sem);
  mmput(mm);
  put_task_struct(priv->task);
 }
}
