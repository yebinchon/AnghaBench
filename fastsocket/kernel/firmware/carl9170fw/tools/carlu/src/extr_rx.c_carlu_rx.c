
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame {int len; int data; } ;
struct carlu {scalar_t__ rx_stream; } ;


 int __carlu_rx (struct carlu*,int ,int ) ;
 int carlu_rx_stream (struct carlu*,struct frame*) ;

void carlu_rx(struct carlu *ar, struct frame *frame)
{
 if (ar->rx_stream)
  carlu_rx_stream(ar, frame);
 else
  __carlu_rx(ar, frame->data, frame->len);
}
