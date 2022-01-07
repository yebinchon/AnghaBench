
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOCK ;
 int UNLOCK ;
 char** __environ ;
 size_t strlen (char const*) ;
 int strncmp (char*,char const*,size_t const) ;

void
unsetenv (const char *name)
{
  const size_t len = strlen (name);
  char **ep;

  LOCK;

  for (ep = __environ; *ep; ++ep)
    if (!strncmp (*ep, name, len) && (*ep)[len] == '=')
      {

 char **dp = ep;
 do
   dp[0] = dp[1];
 while (*dp++);

      }

  UNLOCK;
}
