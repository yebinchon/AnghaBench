
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * digs ;
 int strlen (char const*) ;

__attribute__((used)) static void
writesym (char **dst, const char *sym)
{
  char *p = *dst;
  int len = (sym ? strlen (sym) : 0);

  if (len >= 16)
    {
      *p++ = '0';
      len = 16;
    }
  else
    {
      if (len == 0)
 {
   *p++ = '1';
   sym = "$";
   len = 1;
 }
      else
 *p++ = digs[len];
    }

  while (len--)
    *p++ = *sym++;

  *dst = p;
}
