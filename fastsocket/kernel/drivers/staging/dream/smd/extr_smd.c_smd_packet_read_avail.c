
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smd_channel {int current_packet; } ;


 int smd_stream_read_avail (struct smd_channel*) ;

__attribute__((used)) static int smd_packet_read_avail(struct smd_channel *ch)
{
 if (ch->current_packet) {
  int n = smd_stream_read_avail(ch);
  if (n > ch->current_packet)
   n = ch->current_packet;
  return n;
 } else {
  return 0;
 }
}
