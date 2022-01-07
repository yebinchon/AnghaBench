
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strpush {char const* prevstring; int prevnleft; struct alias* ap; int prevlleft; struct strpush* prev; } ;
struct alias {int flag; } ;
struct TYPE_2__ {struct strpush basestrpush; struct strpush* strpush; } ;


 int ALIASINUSE ;
 int INTOFF ;
 int INTON ;
 struct strpush* ckmalloc (int) ;
 TYPE_1__* parsefile ;
 int parselleft ;
 char const* parsenextc ;
 int parsenleft ;

void
pushstring(const char *s, int len, struct alias *ap)
{
 struct strpush *sp;

 INTOFF;

 if (parsefile->strpush) {
  sp = ckmalloc(sizeof (struct strpush));
  sp->prev = parsefile->strpush;
  parsefile->strpush = sp;
 } else
  sp = parsefile->strpush = &(parsefile->basestrpush);
 sp->prevstring = parsenextc;
 sp->prevnleft = parsenleft;
 sp->prevlleft = parselleft;
 sp->ap = ap;
 if (ap)
  ap->flag |= ALIASINUSE;
 parsenextc = s;
 parsenleft = len;
 INTON;
}
