
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 (void)fprintf(stderr, "%s\n%s\n%s\n",
     "usage: date [-jnRu] [-r seconds|file] [-v[+|-]val[ymwdHMS]]",
     "            "
     "[-I[date | hours | minutes | seconds]]",
     "            "
     "[-f fmt date | [[[[[cc]yy]mm]dd]HH]MM[.ss]] [+format]"
     );
 exit(1);
}
