
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int EIO ;
 char OCD_READ_MEM ;
 int errno ;
 int error (char*) ;
 int memcpy (char*,unsigned char*,int) ;
 int min (int,int) ;
 int ocd_error (char*,int) ;
 unsigned char* ocd_get_packet (char,int*,int ) ;
 int ocd_put_packet (char*,int) ;
 int remote_timeout ;

__attribute__((used)) static int
ocd_read_bytes (CORE_ADDR memaddr, char *myaddr, int len)
{
  char buf[256 + 10];
  unsigned char *p;
  int origlen;

  origlen = len;

  buf[0] = OCD_READ_MEM;
  buf[5] = 1;

  while (len > 0)
    {
      int numbytes;
      int pktlen;
      int status, error_code;

      numbytes = min (len, 256 - 7);

      buf[1] = memaddr >> 24;
      buf[2] = memaddr >> 16;
      buf[3] = memaddr >> 8;
      buf[4] = memaddr;

      buf[6] = numbytes;

      ocd_put_packet (buf, 7);
      p = ocd_get_packet (OCD_READ_MEM, &pktlen, remote_timeout);
      if (pktlen < 4)
 error ("Truncated response packet from OCD device");

      status = p[1];
      error_code = p[2];

      if (error_code == 0x11)
 {
   CORE_ADDR error_address;

   error_address = p[3] << 24;
   error_address |= p[4] << 16;
   error_address |= p[5] << 8;
   error_address |= p[6];
   numbytes = error_address - memaddr;

   len -= numbytes;

   errno = EIO;

   break;
 }
      else if (error_code != 0)
 ocd_error ("ocd_read_bytes:", error_code);

      memcpy (myaddr, &p[4], numbytes);

      len -= numbytes;
      memaddr += numbytes;
      myaddr += numbytes;
    }

  return origlen - len;
}
