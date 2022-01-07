
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int count; int * args; } ;


 int INTOFF ;
 int INTON ;
 int LC_ALL ;
 char* bltinlookup (char*,int ) ;
 TYPE_1__* cmdenviron ;
 int * locale_categories ;
 char** locale_names ;
 scalar_t__ localevar (int ) ;
 int setlocale (int ,char*) ;
 int updatecharset () ;

void
bltinsetlocale(void)
{
 int act = 0;
 char *loc, *locdef;
 int i;

 if (cmdenviron) for (i = 0; i < cmdenviron->count; i++) {
  if (localevar(cmdenviron->args[i])) {
   act = 1;
   break;
  }
 }
 if (!act)
  return;
 loc = bltinlookup("LC_ALL", 0);
 INTOFF;
 if (loc != ((void*)0)) {
  setlocale(LC_ALL, loc);
  INTON;
  updatecharset();
  return;
 }
 locdef = bltinlookup("LANG", 0);
 for (i = 0; locale_names[i] != ((void*)0); i++) {
  loc = bltinlookup(locale_names[i], 0);
  if (loc == ((void*)0))
   loc = locdef;
  if (loc != ((void*)0))
   setlocale(locale_categories[i], loc);
 }
 INTON;
 updatecharset();
}
