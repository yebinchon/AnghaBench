
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptid_t ;


 int PIDGET (int ) ;
 int TIDGET (int ) ;
 int sprintf (char*,char*,int,int) ;

char *
child_pid_to_str (ptid_t ptid)
{
  static char buf[40];

  sprintf (buf, "process %d thread %d", PIDGET (ptid), TIDGET (ptid));

  return buf;
}
