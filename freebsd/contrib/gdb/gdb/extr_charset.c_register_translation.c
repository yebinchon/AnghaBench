
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct translation {struct translation* next; } ;


 struct translation* all_translations ;

__attribute__((used)) static void
register_translation (struct translation *t)
{
  t->next = all_translations;
  all_translations = t;
}
