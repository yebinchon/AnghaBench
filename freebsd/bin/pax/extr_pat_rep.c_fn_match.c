
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dflag ;
 char* range_match (char*,char) ;

__attribute__((used)) static int
fn_match(char *pattern, char *string, char **pend)
{
 char c;
 char test;

 *pend = ((void*)0);
 for (;;) {
  switch (c = *pattern++) {
  case '\0':



   if (*string == '\0')
    return(0);




   if ((dflag == 1) || (*string != '/'))
    return(-1);





   *pend = string;
   return(0);
  case '?':
   if ((test = *string++) == '\0')
    return (-1);
   break;
  case '*':
   c = *pattern;



   while (c == '*')
    c = *++pattern;




   if (c == '\0')
    return (0);




   while ((test = *string) != '\0') {
    if (!fn_match(pattern, string, pend))
     return (0);
    ++string;
   }
   return (-1);
  case '[':



   if (((test = *string++) == '\0') ||
       ((pattern = range_match(pattern, test)) == ((void*)0)))
    return (-1);
   break;
  case '\\':
  default:
   if (c != *string++)
    return (-1);
   break;
  }
 }

}
