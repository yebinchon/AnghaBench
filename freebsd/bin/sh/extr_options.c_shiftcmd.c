
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nparam; int reset; int * p; scalar_t__ malloc; } ;


 int INTOFF ;
 int INTON ;
 int ckfree (int ) ;
 int memmove (int *,int *,int) ;
 int number (char*) ;
 TYPE_1__ shellparam ;

int
shiftcmd(int argc, char **argv)
{
 int i, n;

 n = 1;
 if (argc > 1)
  n = number(argv[1]);
 if (n > shellparam.nparam)
  return 1;
 INTOFF;
 shellparam.nparam -= n;
 if (shellparam.malloc)
  for (i = 0; i < n; i++)
   ckfree(shellparam.p[i]);
 memmove(shellparam.p, shellparam.p + n,
     (shellparam.nparam + 1) * sizeof(shellparam.p[0]));
 shellparam.reset = 1;
 INTON;
 return 0;
}
