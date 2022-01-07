
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct charset {int name; struct charset* next; } ;


 struct charset* all_charsets ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static struct charset *
lookup_charset (const char *name)
{
  struct charset *cs;

  for (cs = all_charsets; cs; cs = cs->next)
    if (! strcmp (name, cs->name))
      return cs;

  return ((void*)0);
}
