
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c67x00_sie {int dev; struct c67x00_hcd* private_data; } ;
struct c67x00_hcd {int lock; } ;


 int DEFAULT_EOT ;
 int c67x00_ll_husb_reset (struct c67x00_sie*,int) ;
 int c67x00_ll_husb_reset_port (struct c67x00_sie*,int) ;
 int c67x00_ll_set_husb_eot (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void c67x00_hub_reset_host_port(struct c67x00_sie *sie, int port)
{
 struct c67x00_hcd *c67x00 = sie->private_data;
 unsigned long flags;

 c67x00_ll_husb_reset(sie, port);

 spin_lock_irqsave(&c67x00->lock, flags);
 c67x00_ll_husb_reset_port(sie, port);
 spin_unlock_irqrestore(&c67x00->lock, flags);

 c67x00_ll_set_husb_eot(sie->dev, DEFAULT_EOT);
}
