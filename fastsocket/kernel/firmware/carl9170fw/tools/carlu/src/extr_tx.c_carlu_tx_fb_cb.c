
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame {int dummy; } ;
struct carlu {int (* tx_fb_cb ) (struct carlu*,struct frame*) ;} ;


 int carlu_free_frame (struct carlu*,struct frame*) ;
 int stub1 (struct carlu*,struct frame*) ;

__attribute__((used)) static void carlu_tx_fb_cb(struct carlu *ar,
         struct frame *frame)
{
 if (ar->tx_fb_cb)
  ar->tx_fb_cb(ar, frame);
 else
  carlu_free_frame(ar, frame);

}
