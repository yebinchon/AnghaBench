
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* h_hostname; int h_netswap; int h_netroot; } ;
typedef TYPE_1__ host ;
typedef int FILE ;


 int fprintf (int *,char*,char*) ;
 int fputs (char*,int *) ;
 scalar_t__ write_nfsname (int *,int ,char*) ;

__attribute__((used)) static int
write_boot_info(FILE *ef, host *hp)
{
  int errors = 0;

  fprintf(ef, "%s\troot=", hp->h_hostname);
  errors += write_nfsname(ef, hp->h_netroot, hp->h_hostname);
  fputs(" swap=", ef);
  errors += write_nfsname(ef, hp->h_netswap, hp->h_hostname);
  fputs("\n", ef);

  return 0;
}
