
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {struct go7007_buffer* vm_private_data; } ;
struct go7007_buffer {scalar_t__ mapped; TYPE_1__* go; } ;
struct TYPE_2__ {int spinlock; } ;


 int deactivate_buffer (struct go7007_buffer*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void go7007_vm_close(struct vm_area_struct *vma)
{
 struct go7007_buffer *gobuf = vma->vm_private_data;
 unsigned long flags;

 if (--gobuf->mapped == 0) {
  spin_lock_irqsave(&gobuf->go->spinlock, flags);
  deactivate_buffer(gobuf);
  spin_unlock_irqrestore(&gobuf->go->spinlock, flags);
 }
}
