
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DEBUG (int ) ;
 int GRAPH2 ;
 int Job_AbortAll () ;
 int MAKEERROR ;
 int Targ_PrintGraph (int) ;
 int Trace_Log (int ,int ) ;
 int exit (int) ;
 scalar_t__ jobsRunning ;

void
DieHorribly(void)
{
 if (jobsRunning)
  Job_AbortAll();
 if (DEBUG(GRAPH2))
  Targ_PrintGraph(2);
 Trace_Log(MAKEERROR, 0);
 exit(2);
}
