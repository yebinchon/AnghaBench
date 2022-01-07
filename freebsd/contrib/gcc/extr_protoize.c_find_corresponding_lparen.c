
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
find_corresponding_lparen (const char *p)
{
  const char *q;
  int paren_depth;

  for (paren_depth = 1, q = p-1; paren_depth; q--)
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
