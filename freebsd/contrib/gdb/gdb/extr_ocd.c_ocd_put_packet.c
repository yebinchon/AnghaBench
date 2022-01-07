
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char* alloca (int) ;
 int ocd_desc ;
 int perror_with_name (char*) ;
 scalar_t__ serial_write (int ,unsigned char*,int) ;

__attribute__((used)) static void
ocd_put_packet (unsigned char *buf, int len)
{
  unsigned char checksum;
  unsigned char c;
  unsigned char *packet, *packet_ptr;

  packet = alloca (len + 1 + 1);
  packet_ptr = packet;

  checksum = 0;

  *packet_ptr++ = 0x55;

  while (len-- > 0)
    {
      c = *buf++;

      checksum += c;
      *packet_ptr++ = c;
    }

  *packet_ptr++ = -checksum;
  if (serial_write (ocd_desc, packet, packet_ptr - packet))
    perror_with_name ("output_packet: write failed");
}
