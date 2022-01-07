
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CORE_ADDR ;


 int IN_SIGTRAMP (scalar_t__,char*) ;
 scalar_t__ SIGTRAMP_END (scalar_t__) ;
 scalar_t__ SIGTRAMP_START (scalar_t__) ;
 scalar_t__ SIGTRAMP_START_P () ;
 scalar_t__ strcmp (char*,char*) ;

int
legacy_pc_in_sigtramp (CORE_ADDR pc, char *name)
{

  if (SIGTRAMP_START_P ())
    return (pc) >= SIGTRAMP_START (pc) && (pc) < SIGTRAMP_END (pc);
  else
    return name && strcmp ("_sigtramp", name) == 0;



}
