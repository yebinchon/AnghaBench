
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char OCD_WRITE_REGS ;
 unsigned char* alloca (int) ;
 int error (char*) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int ocd_error (char*,int) ;
 unsigned char* ocd_get_packet (unsigned char,int*,int ) ;
 int ocd_put_packet (unsigned char*,int) ;
 int remote_timeout ;

void
ocd_write_bdm_registers (int first_bdm_regno, unsigned char *regptr, int reglen)
{
  unsigned char *buf;
  unsigned char *p;
  int error_code, status;
  int pktlen;

  buf = alloca (4 + reglen);

  buf[0] = OCD_WRITE_REGS;
  buf[1] = first_bdm_regno >> 8;
  buf[2] = first_bdm_regno & 0xff;
  buf[3] = reglen;
  memcpy (buf + 4, regptr, reglen);

  ocd_put_packet (buf, 4 + reglen);
  p = ocd_get_packet (OCD_WRITE_REGS, &pktlen, remote_timeout);

  if (pktlen < 3)
    error ("Truncated response packet from OCD device");

  status = p[1];
  error_code = p[2];

  if (error_code != 0)
    ocd_error ("ocd_write_bdm_registers:", error_code);
}
