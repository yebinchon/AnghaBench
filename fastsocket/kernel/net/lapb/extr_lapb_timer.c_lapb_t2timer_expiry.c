
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lapb_cb {int condition; } ;


 int LAPB_ACK_PENDING_CONDITION ;
 int lapb_timeout_response (struct lapb_cb*) ;

__attribute__((used)) static void lapb_t2timer_expiry(unsigned long param)
{
 struct lapb_cb *lapb = (struct lapb_cb *)param;

 if (lapb->condition & LAPB_ACK_PENDING_CONDITION) {
  lapb->condition &= ~LAPB_ACK_PENDING_CONDITION;
  lapb_timeout_response(lapb);
 }
}
