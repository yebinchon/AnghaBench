
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct frame {unsigned int len; scalar_t__* data; } ;



__attribute__((used)) static void carlu_loopback_mark_tx_frames(struct frame *frame)
{
 unsigned int i;

 for (i = 0; i < frame->len; i++)
  frame->data[i] = (uint8_t) i;
}
