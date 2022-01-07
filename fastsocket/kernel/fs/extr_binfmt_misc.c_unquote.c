
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isdigit (char) ;
 char toupper (int ) ;

__attribute__((used)) static int unquote(char *from)
{
 char c = 0, *s = from, *p = from;

 while ((c = *s++) != '\0') {
  if (c == '\\' && *s == 'x') {
   s++;
   c = toupper(*s++);
   *p = (c - (isdigit(c) ? '0' : 'A' - 10)) << 4;
   c = toupper(*s++);
   *p++ |= c - (isdigit(c) ? '0' : 'A' - 10);
   continue;
  }
  *p++ = c;
 }
 return p - from;
}
