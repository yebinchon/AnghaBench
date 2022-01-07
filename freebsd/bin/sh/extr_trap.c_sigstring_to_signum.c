
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NSIG ;
 int atoi (char*) ;
 scalar_t__ is_number (char*) ;
 scalar_t__ strcasecmp (char*,char*) ;
 scalar_t__ strncasecmp (char*,char*,int) ;
 int sys_nsig ;
 char** sys_signame ;

__attribute__((used)) static int
sigstring_to_signum(char *sig)
{

 if (is_number(sig)) {
  int signo;

  signo = atoi(sig);
  return ((signo >= 0 && signo < NSIG) ? signo : (-1));
 } else if (strcasecmp(sig, "EXIT") == 0) {
  return (0);
 } else {
  int n;

  if (strncasecmp(sig, "SIG", 3) == 0)
   sig += 3;
  for (n = 1; n < sys_nsig; n++)
   if (sys_signame[n] &&
       strcasecmp(sys_signame[n], sig) == 0)
    return (n);
 }
 return (-1);
}
