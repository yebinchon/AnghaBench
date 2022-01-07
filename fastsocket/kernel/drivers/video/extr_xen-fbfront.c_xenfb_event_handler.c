
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenfb_page {scalar_t__ in_cons; scalar_t__ in_prod; } ;
struct xenfb_info {int irq; struct xenfb_page* page; } ;
typedef int irqreturn_t ;


 int INT_MAX ;
 int IRQ_HANDLED ;
 int notify_remote_via_irq (int ) ;
 int xenfb_refresh (struct xenfb_info*,int ,int ,int ,int ) ;

__attribute__((used)) static irqreturn_t xenfb_event_handler(int rq, void *dev_id)
{





 struct xenfb_info *info = dev_id;
 struct xenfb_page *page = info->page;

 if (page->in_cons != page->in_prod) {
  info->page->in_cons = info->page->in_prod;
  notify_remote_via_irq(info->irq);
 }


 xenfb_refresh(info, INT_MAX, INT_MAX, -INT_MAX, -INT_MAX);

 return IRQ_HANDLED;
}
