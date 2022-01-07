
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ cb; } ;
struct irlap_cb {int next_bofs; int bofs_count; scalar_t__ xbofs_delay; scalar_t__ mtt_required; int speed; } ;
struct irda_skb_cb {scalar_t__ xbofs_delay; int next_xbofs; int xbofs; int next_speed; scalar_t__ mtt; int magic; } ;


 int LAP_MAGIC ;

__attribute__((used)) static inline void irlap_insert_info(struct irlap_cb *self,
         struct sk_buff *skb)
{
 struct irda_skb_cb *cb = (struct irda_skb_cb *) skb->cb;





 cb->magic = LAP_MAGIC;
 cb->mtt = self->mtt_required;
 cb->next_speed = self->speed;


 self->mtt_required = 0;





 cb->xbofs = self->bofs_count;
 cb->next_xbofs = self->next_bofs;
 cb->xbofs_delay = self->xbofs_delay;


 self->xbofs_delay = 0;

 self->bofs_count = self->next_bofs;
}
