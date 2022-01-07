
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,...) ;
 int sys_nsig ;
 char** sys_signame ;

__attribute__((used)) static void
printsignals(FILE *fp)
{
 int n;

 for (n = 1; n < sys_nsig; n++) {
  (void)fprintf(fp, "%s", sys_signame[n]);
  if (n == (sys_nsig / 2) || n == (sys_nsig - 1))
   (void)fprintf(fp, "\n");
  else
   (void)fprintf(fp, " ");
 }
}
