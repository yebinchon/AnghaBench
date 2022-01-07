
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
Str_Match(const char *string, const char *pattern)
{
 char c2;

 for (;;) {





  if (*pattern == 0)
   return(!*string);
  if (*string == 0 && *pattern != '*')
   return(0);






  if (*pattern == '*') {
   pattern += 1;
   if (*pattern == 0)
    return(1);
   while (*string != 0) {
    if (Str_Match(string, pattern))
     return(1);
    ++string;
   }
   return(0);
  }




  if (*pattern == '?')
   goto thisCharOK;





  if (*pattern == '[') {
   int nomatch;

   ++pattern;
   if (*pattern == '^') {
    ++pattern;
    nomatch = 1;
   } else
    nomatch = 0;
   for (;;) {
    if ((*pattern == ']') || (*pattern == 0)) {
     if (nomatch)
      break;
     return(0);
    }
    if (*pattern == *string)
     break;
    if (pattern[1] == '-') {
     c2 = pattern[2];
     if (c2 == 0)
      return(nomatch);
     if ((*pattern <= *string) &&
         (c2 >= *string))
      break;
     if ((*pattern >= *string) &&
         (c2 <= *string))
      break;
     pattern += 2;
    }
    ++pattern;
   }
   if (nomatch && (*pattern != ']') && (*pattern != 0))
    return 0;
   while ((*pattern != ']') && (*pattern != 0))
    ++pattern;
   goto thisCharOK;
  }




  if (*pattern == '\\') {
   ++pattern;
   if (*pattern == 0)
    return(0);
  }




  if (*pattern != *string)
   return(0);
thisCharOK: ++pattern;
  ++string;
 }
}
