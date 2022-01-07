
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alias {int flag; char* name; struct alias* next; } ;


 int ALIASINUSE ;
 int ATABSIZE ;
 int INTOFF ;
 int INTON ;
 scalar_t__ aliases ;
 struct alias** atab ;
 int freealias (struct alias*) ;

__attribute__((used)) static void
rmaliases(void)
{
 struct alias *ap, **app;
 int i;

 INTOFF;
 for (i = 0; i < ATABSIZE; i++) {
  app = &atab[i];
  while (*app) {
   ap = *app;
   if (ap->flag & ALIASINUSE) {
    *ap->name = '\0';
    app = &(*app)->next;
   } else {
    *app = ap->next;
    freealias(ap);
   }
  }
 }
 aliases = 0;
 INTON;
}
