
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_source (int,int ) ;
 char const* clean_text_base ;

__attribute__((used)) static const char *
careful_find_l_paren (const char *p)
{
  const char *q;
  int paren_depth;

  for (paren_depth = 1, q = p-1; paren_depth; check_source (--q >= clean_text_base, 0))
    {
      switch (*q)
 {
 case ')':
   paren_depth++;
   break;
 case '(':
   paren_depth--;
   break;
 }
    }
  return ++q;
}
