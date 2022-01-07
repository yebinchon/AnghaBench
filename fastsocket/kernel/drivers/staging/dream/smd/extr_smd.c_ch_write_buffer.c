
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smd_channel {TYPE_1__* send; } ;
struct TYPE_2__ {unsigned int head; unsigned int tail; scalar_t__ data; } ;


 unsigned int SMD_BUF_SIZE ;

__attribute__((used)) static unsigned ch_write_buffer(struct smd_channel *ch, void **ptr)
{
 unsigned head = ch->send->head;
 unsigned tail = ch->send->tail;
 *ptr = (void *) (ch->send->data + head);

 if (head < tail) {
  return tail - head - 1;
 } else {
  if (tail == 0)
   return SMD_BUF_SIZE - head - 1;
  else
   return SMD_BUF_SIZE - head;
 }
}
