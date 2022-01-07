
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isxdigit (int ) ;

__attribute__((used)) static char *scanarg(char *s, char del)
{
 char c;

 while ((c = *s++) != del) {
  if (c == '\\' && *s == 'x') {
   s++;
   if (!isxdigit(*s++))
    return ((void*)0);
   if (!isxdigit(*s++))
    return ((void*)0);
  }
 }
 return s;
}
