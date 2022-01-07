
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alias {struct alias* next; scalar_t__ flag; void* val; void* name; } ;


 int INTOFF ;
 int INTON ;
 int aliases ;
 struct alias* ckmalloc (int) ;
 struct alias** hashalias (char const*) ;
 void* savestr (char const*) ;
 int unalias (char const*) ;

__attribute__((used)) static
void
setalias(const char *name, const char *val)
{
 struct alias *ap, **app;

 unalias(name);
 app = hashalias(name);
 INTOFF;
 ap = ckmalloc(sizeof (struct alias));
 ap->name = savestr(name);
 ap->val = savestr(val);
 ap->flag = 0;
 ap->next = *app;
 *app = ap;
 aliases++;
 INTON;
}
