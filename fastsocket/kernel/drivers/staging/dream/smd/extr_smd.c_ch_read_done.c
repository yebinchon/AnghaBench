
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smd_channel {TYPE_1__* recv; } ;
struct TYPE_2__ {unsigned int tail; int fTAIL; } ;


 int BUG_ON (int) ;
 int SMD_BUF_SIZE ;
 unsigned int smd_stream_read_avail (struct smd_channel*) ;

__attribute__((used)) static void ch_read_done(struct smd_channel *ch, unsigned count)
{
 BUG_ON(count > smd_stream_read_avail(ch));
 ch->recv->tail = (ch->recv->tail + count) & (SMD_BUF_SIZE - 1);
 ch->recv->fTAIL = 1;
}
