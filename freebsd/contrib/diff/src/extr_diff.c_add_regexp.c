
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regexp_list {char* regexps; size_t len; int multiple_regexps; size_t size; int buf; } ;


 int error (int ,int ,char*,char const*,char const*) ;
 int memcpy (char*,char const*,size_t) ;
 char* re_compile_pattern (char const*,size_t,int ) ;
 size_t strlen (char const*) ;
 char* xrealloc (char*,size_t) ;

__attribute__((used)) static void
add_regexp (struct regexp_list *reglist, char const *pattern)
{
  size_t patlen = strlen (pattern);
  char const *m = re_compile_pattern (pattern, patlen, reglist->buf);

  if (m != 0)
    error (0, 0, "%s: %s", pattern, m);
  else
    {
      char *regexps = reglist->regexps;
      size_t len = reglist->len;
      bool multiple_regexps = reglist->multiple_regexps = regexps != 0;
      size_t newlen = reglist->len = len + 2 * multiple_regexps + patlen;
      size_t size = reglist->size;

      if (size <= newlen)
 {
   if (!size)
     size = 1;

   do size *= 2;
   while (size <= newlen);

   reglist->size = size;
   reglist->regexps = regexps = xrealloc (regexps, size);
 }
      if (multiple_regexps)
 {
   regexps[len++] = '\\';
   regexps[len++] = '|';
 }
      memcpy (regexps + len, pattern, patlen + 1);
    }
}
