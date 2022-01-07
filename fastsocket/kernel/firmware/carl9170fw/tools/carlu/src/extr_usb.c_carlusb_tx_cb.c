
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame {scalar_t__ len; } ;
struct carlu {int tx_octets; int (* tx_cb ) (struct carlu*,struct frame*) ;} ;


 int carlu_free_frame (struct carlu*,struct frame*) ;
 int stub1 (struct carlu*,struct frame*) ;

__attribute__((used)) static void carlusb_tx_cb(struct carlu *ar,
         struct frame *frame)
{
 if (ar->tx_cb)
  ar->tx_cb(ar, frame);

 ar->tx_octets += frame->len;

 carlu_free_frame(ar, frame);
}
