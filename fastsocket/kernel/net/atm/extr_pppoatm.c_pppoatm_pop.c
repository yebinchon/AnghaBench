
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct pppoatm_vcc {int wakeup_tasklet; int (* old_pop ) (struct atm_vcc*,struct sk_buff*) ;} ;
struct atm_vcc {int dummy; } ;


 struct pppoatm_vcc* atmvcc_to_pvcc (struct atm_vcc*) ;
 int stub1 (struct atm_vcc*,struct sk_buff*) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void pppoatm_pop(struct atm_vcc *atmvcc, struct sk_buff *skb)
{
 struct pppoatm_vcc *pvcc = atmvcc_to_pvcc(atmvcc);
 pvcc->old_pop(atmvcc, skb);
 tasklet_schedule(&pvcc->wakeup_tasklet);
}
