
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strncpy (char*,char const*,size_t) ;
 char* xmalloc (size_t) ;

__attribute__((used)) static char *
dupnstr (const char *s, size_t n)
{
  char *ret_val = xmalloc (n + 1);

  strncpy (ret_val, s, n);
  ret_val[n] = '\0';
  return ret_val;
}
