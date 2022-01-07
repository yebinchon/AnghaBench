
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smd_channel {int dummy; } ;


 int SMD_HEADER_SIZE ;
 int smd_stream_write_avail (struct smd_channel*) ;

__attribute__((used)) static int smd_packet_write_avail(struct smd_channel *ch)
{
 int n = smd_stream_write_avail(ch);
 return n > SMD_HEADER_SIZE ? n - SMD_HEADER_SIZE : 0;
}
