
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {scalar_t__ tag; struct string_list* next; int string; } ;


 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int equal_list(struct string_list *a, struct string_list *b)
{
 while (a && b) {
  if (a->tag != b->tag || strcmp(a->string, b->string))
   return 0;
  a = a->next;
  b = b->next;
 }

 return !a && !b;
}
