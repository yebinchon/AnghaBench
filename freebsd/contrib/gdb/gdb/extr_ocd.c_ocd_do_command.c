
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OCD_FLAG_CABLE_DISC ;
 int OCD_FLAG_PWF ;
 unsigned char OCD_LOG_FILE ;
 int error (char*) ;
 int ocd_error (char*,int) ;
 unsigned char* ocd_get_packet (unsigned char,int*,int ) ;
 int ocd_put_packet (unsigned char*,int) ;
 int remote_timeout ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static unsigned char *
ocd_do_command (int cmd, int *statusp, int *lenp)
{
  unsigned char buf[100], *p;
  int status, error_code;
  char errbuf[100];

  unsigned char logbuf[100];
  int logpktlen;

  buf[0] = cmd;
  ocd_put_packet (buf, 1);
  p = ocd_get_packet (*buf, lenp, remote_timeout);

  if (*lenp < 3)
    error ("Truncated response packet from OCD device");

  status = p[1];
  error_code = p[2];

  if (error_code != 0)
    {
      sprintf (errbuf, "ocd_do_command (0x%x):", cmd);
      ocd_error (errbuf, error_code);
    }

  if (status & OCD_FLAG_PWF)
    error ("OCD device can't detect VCC at BDM interface.");
  else if (status & OCD_FLAG_CABLE_DISC)
    error ("BDM cable appears to be disconnected.");

  *statusp = status;

  logbuf[0] = OCD_LOG_FILE;
  logbuf[1] = 3;
  ocd_put_packet (logbuf, 2);
  ocd_get_packet (logbuf[0], &logpktlen, remote_timeout);

  logbuf[0] = OCD_LOG_FILE;
  logbuf[1] = 2;
  ocd_put_packet (logbuf, 2);
  ocd_get_packet (logbuf[0], &logpktlen, remote_timeout);

  return p + 3;
}
