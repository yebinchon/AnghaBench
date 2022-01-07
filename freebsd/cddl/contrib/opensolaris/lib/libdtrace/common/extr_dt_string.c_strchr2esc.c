
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* malloc (size_t) ;

char *
strchr2esc(const char *s, size_t n)
{
 const char *p;
 char *q, *s2, c;
 size_t addl = 0;

 for (p = s; p < s + n; p++) {
  switch (c = *p) {
  case '\0':
  case '\a':
  case '\b':
  case '\f':
  case '\n':
  case '\r':
  case '\t':
  case '\v':
  case '"':
  case '\\':
   addl++;
   break;
  case ' ':
   break;
  default:
   if (c < '!' || c > '~')
    addl += 3;
  }
 }

 if ((s2 = malloc(n + addl + 1)) == ((void*)0))
  return (((void*)0));

 for (p = s, q = s2; p < s + n; p++) {
  switch (c = *p) {
  case '\0':
   *q++ = '\\';
   *q++ = '0';
   break;
  case '\a':
   *q++ = '\\';
   *q++ = 'a';
   break;
  case '\b':
   *q++ = '\\';
   *q++ = 'b';
   break;
  case '\f':
   *q++ = '\\';
   *q++ = 'f';
   break;
  case '\n':
   *q++ = '\\';
   *q++ = 'n';
   break;
  case '\r':
   *q++ = '\\';
   *q++ = 'r';
   break;
  case '\t':
   *q++ = '\\';
   *q++ = 't';
   break;
  case '\v':
   *q++ = '\\';
   *q++ = 'v';
   break;
  case '"':
   *q++ = '\\';
   *q++ = '"';
   break;
  case '\\':
   *q++ = '\\';
   *q++ = '\\';
   break;
  case ' ':
   *q++ = c;
   break;
  default:
   if (c < '!' || c > '~') {
    *q++ = '\\';
    *q++ = ((c >> 6) & 3) + '0';
    *q++ = ((c >> 3) & 7) + '0';
    *q++ = (c & 7) + '0';
   } else
    *q++ = c;
  }

  if (c == '\0')
   break;
 }

 *q = '\0';
 return (s2);
}
