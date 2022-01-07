
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smd_channel {TYPE_1__* recv; } ;
struct TYPE_2__ {int head; int tail; } ;


 int SMD_BUF_SIZE ;

__attribute__((used)) static int smd_stream_read_avail(struct smd_channel *ch)
{
 return (ch->recv->head - ch->recv->tail) & (SMD_BUF_SIZE - 1);
}
