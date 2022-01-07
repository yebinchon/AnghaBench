
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab {int dummy; } ;
struct symbol {int dummy; } ;


 int STRUCT_DOMAIN ;
 scalar_t__ alloca (int) ;
 struct symbol* lookup_symbol (char*,int ,int ,int ,struct symtab**) ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static struct symbol *
lookup_prefix_sym (char **argptr, char *p)
{
  char *p1;
  char *copy;


  p1 = p;
  while (p != *argptr && p[-1] == ' ')
    --p;
  copy = (char *) alloca (p - *argptr + 1);
  memcpy (copy, *argptr, p - *argptr);
  copy[p - *argptr] = 0;


  p = p1 + (p1[0] == ':' ? 2 : 1);
  while (*p == ' ' || *p == '\t')
    p++;
  *argptr = p;




  return lookup_symbol (copy, 0, STRUCT_DOMAIN, 0,
   (struct symtab **) ((void*)0));
}
