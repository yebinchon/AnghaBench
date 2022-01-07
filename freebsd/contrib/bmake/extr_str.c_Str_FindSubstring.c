
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* UNCONST (char const*) ;

char *
Str_FindSubstring(const char *string, const char *substring)
{
 const char *a, *b;







 for (b = substring; *string != 0; string += 1) {
  if (*string != *b)
   continue;
  a = string;
  for (;;) {
   if (*b == 0)
    return UNCONST(string);
   if (*a++ != *b++)
    break;
  }
  b = substring;
 }
 return ((void*)0);
}
