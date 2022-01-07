
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smd_channel {TYPE_1__* recv; } ;
struct TYPE_2__ {unsigned int head; unsigned int tail; scalar_t__ data; } ;


 int SMD_BUF_SIZE ;

__attribute__((used)) static unsigned ch_read_buffer(struct smd_channel *ch, void **ptr)
{
 unsigned head = ch->recv->head;
 unsigned tail = ch->recv->tail;
 *ptr = (void *) (ch->recv->data + tail);

 if (tail <= head)
  return head - tail;
 else
  return SMD_BUF_SIZE - tail;
}
