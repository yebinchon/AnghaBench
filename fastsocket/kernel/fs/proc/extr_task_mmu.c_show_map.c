
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_start; } ;
struct task_struct {int mm; } ;
struct seq_file {scalar_t__ count; scalar_t__ size; int version; struct proc_maps_private* private; } ;
struct proc_maps_private {struct task_struct* task; } ;


 struct vm_area_struct* get_gate_vma (int ) ;
 int show_map_vma (struct seq_file*,struct vm_area_struct*) ;

__attribute__((used)) static int show_map(struct seq_file *m, void *v)
{
 struct vm_area_struct *vma = v;
 struct proc_maps_private *priv = m->private;
 struct task_struct *task = priv->task;

 show_map_vma(m, vma);

 if (m->count < m->size)
  m->version = (vma != get_gate_vma(task->mm))
   ? vma->vm_start : 0;
 return 0;
}
