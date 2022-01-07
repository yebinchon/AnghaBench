
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptid_t ;
typedef enum target_signal { ____Placeholder_target_signal } target_signal ;


 int OCD_RUN ;
 int OCD_STEP ;
 int last_run_status ;
 int ocd_do_command (int ,int *,int*) ;

void
ocd_resume (ptid_t ptid, int step, enum target_signal siggnal)
{
  int pktlen;

  if (step)
    ocd_do_command (OCD_STEP, &last_run_status, &pktlen);
  else
    ocd_do_command (OCD_RUN, &last_run_status, &pktlen);
}
