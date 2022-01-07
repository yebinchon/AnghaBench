
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {char const* name; struct string_list* next; } ;


 struct string_list* xmalloc (int) ;

__attribute__((used)) static struct string_list *
string_list_cons (const char *string, struct string_list *rest)
{
  struct string_list *temp = xmalloc (sizeof (struct string_list));

  temp->next = rest;
  temp->name = string;
  return temp;
}
