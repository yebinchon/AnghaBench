
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int count; int * args; } ;


 int INTOFF ;
 int INTON ;
 int LC_ALL ;
 TYPE_1__* cmdenviron ;
 scalar_t__ localevar (int ) ;
 int setlocale (int ,char*) ;
 int updatecharset () ;

void
bltinunsetlocale(void)
{
 int i;

 INTOFF;
 if (cmdenviron) for (i = 0; i < cmdenviron->count; i++) {
  if (localevar(cmdenviron->args[i])) {
   setlocale(LC_ALL, "");
   updatecharset();
   break;
  }
 }
 INTON;
}
