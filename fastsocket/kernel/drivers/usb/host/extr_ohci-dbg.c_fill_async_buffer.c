
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ohci_hcd {int lock; int ed_bulktail; int ed_controltail; } ;
struct debug_buffer {scalar_t__ count; scalar_t__ page; struct ohci_hcd* ohci; } ;
typedef size_t ssize_t ;


 size_t show_list (struct ohci_hcd*,scalar_t__,scalar_t__,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static ssize_t fill_async_buffer(struct debug_buffer *buf)
{
 struct ohci_hcd *ohci;
 size_t temp;
 unsigned long flags;

 ohci = buf->ohci;


 spin_lock_irqsave (&ohci->lock, flags);
 temp = show_list(ohci, buf->page, buf->count, ohci->ed_controltail);
 temp += show_list(ohci, buf->page + temp, buf->count - temp,
     ohci->ed_bulktail);
 spin_unlock_irqrestore (&ohci->lock, flags);

 return temp;
}
