
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** argptr ;
 int error (char*) ;
 int minus_o (char*,int) ;
 char* minusc ;
 int setoption (int,int) ;
 int setparam (int ,char**) ;
 scalar_t__ vflag ;
 scalar_t__ xflag ;

__attribute__((used)) static void
options(int cmdline)
{
 char *kp, *p;
 int val;
 int c;

 if (cmdline)
  minusc = ((void*)0);
 while ((p = *argptr) != ((void*)0)) {
  argptr++;
  if ((c = *p++) == '-') {
   val = 1;

   if (p[0] == '\0')
    goto end_options1;
   if (p[0] == '-' && p[1] == '\0')
    goto end_options2;
   if (p[0] == '-') {
    kp = p + 1;
    while (*kp == ' ' || *kp == '\t')
     kp++;
    if (*kp == '#' || *kp == '\0')
     goto end_options2;
   }
  } else if (c == '+') {
   val = 0;
  } else {
   argptr--;
   break;
  }
  while ((c = *p++) != '\0') {
   if (c == 'c' && cmdline) {
    char *q;

    q = *argptr++;
    if (q == ((void*)0) || minusc != ((void*)0))
     error("Bad -c option");
    minusc = q;
   } else if (c == 'o') {
    minus_o(*argptr, val);
    if (*argptr)
     argptr++;
   } else
    setoption(c, val);
  }
 }
 return;


end_options1:
 if (!cmdline) {
  xflag = vflag = 0;
  return;
 }







end_options2:
 if (!cmdline) {
  if (*argptr == ((void*)0))
   setparam(0, argptr);
  return;
 }
 p = *argptr;
 if (p != ((void*)0) && p[0] == '#' && p[1] == '\0') {
  while (*argptr != ((void*)0))
   argptr++;

  argptr--;
 }
}
