
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smd_channel {unsigned int current_packet; } ;


 int BUG_ON (int) ;
 int SMD_HEADER_SIZE ;
 int ch_read (struct smd_channel*,unsigned int*,int) ;
 int smd_stream_read_avail (struct smd_channel*) ;

__attribute__((used)) static void update_packet_state(struct smd_channel *ch)
{
 unsigned hdr[5];
 int r;


 if (ch->current_packet != 0)
  return;


 if (smd_stream_read_avail(ch) < SMD_HEADER_SIZE)
  return;

 r = ch_read(ch, hdr, SMD_HEADER_SIZE);
 BUG_ON(r != SMD_HEADER_SIZE);

 ch->current_packet = hdr[0];
}
