
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hdr ;


 unsigned char PESC ;
 int debug_write (unsigned char*,int) ;

__attribute__((used)) static void
send_packet (char type, unsigned char *buf, int buflen, int seq)
{
  unsigned char hdr[4];
  int len = buflen;
  int sum, i;


  if (type == 'p')
    len++;


  if (len > 0)
    len += 2;


  hdr[0] = PESC;
  hdr[1] = type;
  hdr[2] = len & 0xff;
  hdr[3] = (len >> 8) & 0xff;
  debug_write (hdr, sizeof (hdr));

  if (len)
    {

      debug_write (buf, buflen);


      if (type == 'p')
 {
   hdr[0] = seq;
   debug_write (hdr, 1);
 }


      sum = 0;
      for (i = 0; i < buflen; i++)
 {
   int tmp = (buf[i] & 0xff);
   if (i & 1)
     sum += tmp;
   else
     sum += tmp << 8;
 }
      if (type == 'p')
 {
   if (buflen & 1)
     sum += (seq & 0xff);
   else
     sum += (seq & 0xff) << 8;
 }
      sum = (sum & 0xffff) + ((sum >> 16) & 0xffff);
      sum += (sum >> 16) & 1;
      sum = ~sum;

      hdr[0] = (sum >> 8) & 0xff;
      hdr[1] = sum & 0xff;
      debug_write (hdr, 2);
    }
}
