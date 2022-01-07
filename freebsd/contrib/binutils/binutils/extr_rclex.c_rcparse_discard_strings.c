
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alloc_string {struct alloc_string* next; struct alloc_string* s; } ;


 int free (struct alloc_string*) ;
 struct alloc_string* strings ;

void
rcparse_discard_strings (void)
{
  struct alloc_string *as;

  as = strings;
  while (as != ((void*)0))
    {
      struct alloc_string *n;

      free (as->s);
      n = as->next;
      free (as);
      as = n;
    }

  strings = ((void*)0);
}
