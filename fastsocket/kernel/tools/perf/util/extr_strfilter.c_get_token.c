
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int is_separator (char const) ;
 scalar_t__ isspace (char const) ;

__attribute__((used)) static const char *get_token(const char *s, const char **e)
{
 const char *p;

 while (isspace(*s))
  s++;

 if (*s == '\0') {
  p = s;
  goto end;
 }

 p = s + 1;
 if (!is_separator(*s)) {

retry:
  while (*p && !is_separator(*p) && !isspace(*p))
   p++;

  if (*(p - 1) == '\\' || (*p == '!' && *(p - 1) == '[')) {
   p++;
   goto retry;
  }
 }
end:
 *e = p;
 return s;
}
