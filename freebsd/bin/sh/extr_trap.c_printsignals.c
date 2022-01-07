
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int out1c (char) ;
 int out1fmt (char*,int) ;
 int out1str (char*) ;
 scalar_t__ strlen (int) ;
 int sys_nsig ;
 int* sys_signame ;

__attribute__((used)) static void
printsignals(void)
{
 int n, outlen;

 outlen = 0;
 for (n = 1; n < sys_nsig; n++) {
  if (sys_signame[n]) {
   out1fmt("%s", sys_signame[n]);
   outlen += strlen(sys_signame[n]);
  } else {
   out1fmt("%d", n);
   outlen += 3;
  }
  ++outlen;
  if (outlen > 71 || n == sys_nsig - 1) {
   out1str("\n");
   outlen = 0;
  } else {
   out1c(' ');
  }
 }
}
