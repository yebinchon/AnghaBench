
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct strpush {char* prevstring; struct strpush* prev; int prevlleft; int prevnleft; TYPE_1__* ap; } ;
struct TYPE_4__ {struct strpush basestrpush; struct strpush* strpush; } ;
struct TYPE_3__ {char* val; int flag; } ;


 int ALIASINUSE ;
 int INTOFF ;
 int INTON ;
 int ckfree (struct strpush*) ;
 int forcealias () ;
 TYPE_2__* parsefile ;
 int parselleft ;
 char* parsenextc ;
 int parsenleft ;

__attribute__((used)) static void
popstring(void)
{
 struct strpush *sp = parsefile->strpush;

 INTOFF;
 if (sp->ap) {
  if (parsenextc != sp->ap->val &&
      (parsenextc[-1] == ' ' || parsenextc[-1] == '\t'))
   forcealias();
  sp->ap->flag &= ~ALIASINUSE;
 }
 parsenextc = sp->prevstring;
 parsenleft = sp->prevnleft;
 parselleft = sp->prevlleft;

 parsefile->strpush = sp->prev;
 if (sp != &(parsefile->basestrpush))
  ckfree(sp);
 INTON;
}
