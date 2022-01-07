
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fail (char const*,int ,char*) ;
 int strlen (char const*) ;

void
__stack_chk_fail (void)
{
  const char *msg = "*** stack smashing detected ***: ";
  fail (msg, strlen (msg), "stack smashing detected: terminated");
}
