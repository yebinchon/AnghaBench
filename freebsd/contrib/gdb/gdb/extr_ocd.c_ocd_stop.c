
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OCD_FLAG_BDM ;
 int OCD_STOP ;
 int error (char*) ;
 int ocd_do_command (int ,int*,int*) ;

void
ocd_stop (void)
{
  int status;
  int pktlen;

  ocd_do_command (OCD_STOP, &status, &pktlen);

  if (!(status & OCD_FLAG_BDM))
    error ("Can't stop target via BDM");
}
