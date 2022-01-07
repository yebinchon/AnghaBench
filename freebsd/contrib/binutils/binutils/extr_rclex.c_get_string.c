
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alloc_string {char* s; struct alloc_string* next; } ;


 struct alloc_string* strings ;
 void* xmalloc (int) ;

__attribute__((used)) static char *
get_string (int len)
{
  struct alloc_string *as;

  as = xmalloc (sizeof *as);
  as->s = xmalloc (len);

  as->next = strings;
  strings = as;

  return as->s;
}
