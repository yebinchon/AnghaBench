
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct seq_file {struct proc_maps_private* private; } ;
struct proc_maps_private {scalar_t__ task; } ;


 int IS_ERR (struct vm_area_struct*) ;
 int put_task_struct (scalar_t__) ;
 int vma_stop (struct proc_maps_private*,struct vm_area_struct*) ;

__attribute__((used)) static void m_stop(struct seq_file *m, void *v)
{
 struct proc_maps_private *priv = m->private;
 struct vm_area_struct *vma = v;

 if (!IS_ERR(vma))
  vma_stop(priv, vma);
 if (priv->task)
  put_task_struct(priv->task);
}
