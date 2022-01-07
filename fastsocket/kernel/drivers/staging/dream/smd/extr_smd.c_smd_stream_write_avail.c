
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smd_channel {TYPE_1__* send; } ;
struct TYPE_2__ {int head; int tail; } ;


 int SMD_BUF_SIZE ;

__attribute__((used)) static int smd_stream_write_avail(struct smd_channel *ch)
{
 return (SMD_BUF_SIZE - 1) -
  ((ch->send->head - ch->send->tail) & (SMD_BUF_SIZE - 1));
}
