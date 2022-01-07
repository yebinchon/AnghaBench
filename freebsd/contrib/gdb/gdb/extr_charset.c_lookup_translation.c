
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct translation {int to; int from; struct translation* next; } ;


 struct translation* all_translations ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static struct translation *
lookup_translation (const char *from, const char *to)
{
  struct translation *t;

  for (t = all_translations; t; t = t->next)
    if (! strcmp (from, t->from)
        && ! strcmp (to, t->to))
      return t;

  return 0;
}
