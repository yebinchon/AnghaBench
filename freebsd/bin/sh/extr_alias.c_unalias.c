
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alias {char* name; int flag; struct alias* next; } ;


 int ALIASINUSE ;
 int INTOFF ;
 int INTON ;
 int aliases ;
 scalar_t__ equal (char const*,char*) ;
 int freealias (struct alias*) ;
 struct alias** hashalias (char const*) ;

__attribute__((used)) static int
unalias(const char *name)
{
 struct alias *ap, **app;

 app = hashalias(name);

 for (ap = *app; ap; app = &(ap->next), ap = ap->next) {
  if (equal(name, ap->name)) {







   if (ap->flag & ALIASINUSE)
    *ap->name = '\0';
   else {
    INTOFF;
    *app = ap->next;
    freealias(ap);
    INTON;
   }
   aliases--;
   return (0);
  }
 }

 return (1);
}
