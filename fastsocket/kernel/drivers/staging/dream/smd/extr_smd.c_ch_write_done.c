
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smd_channel {TYPE_1__* send; } ;
struct TYPE_2__ {unsigned int head; int fHEAD; } ;


 int BUG_ON (int) ;
 int SMD_BUF_SIZE ;
 unsigned int smd_stream_write_avail (struct smd_channel*) ;

__attribute__((used)) static void ch_write_done(struct smd_channel *ch, unsigned count)
{
 BUG_ON(count > smd_stream_write_avail(ch));
 ch->send->head = (ch->send->head + count) & (SMD_BUF_SIZE - 1);
 ch->send->fHEAD = 1;
}
