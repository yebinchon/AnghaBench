
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct charset {struct charset* next; } ;


 struct charset* all_charsets ;

__attribute__((used)) static void
register_charset (struct charset *cs)
{
  struct charset **ptr;



  for (ptr = &all_charsets; *ptr; ptr = &(*ptr)->next)
    ;

  cs->next = 0;
  *ptr = cs;
}
