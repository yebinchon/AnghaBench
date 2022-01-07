
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alias {int flag; int name; struct alias* next; } ;


 int ALIASINUSE ;
 scalar_t__ aliases ;
 scalar_t__ equal (char const*,int ) ;
 struct alias** hashalias (char const*) ;

struct alias *
lookupalias(const char *name, int check)
{
 struct alias *ap;

 if (aliases == 0)
  return (((void*)0));
 for (ap = *hashalias(name); ap; ap = ap->next) {
  if (equal(name, ap->name)) {
   if (check && (ap->flag & ALIASINUSE))
    return (((void*)0));
   return (ap);
  }
 }

 return (((void*)0));
}
