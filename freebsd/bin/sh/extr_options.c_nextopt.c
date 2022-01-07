
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** argptr ;
 int error (char*,char) ;
 char* nextopt_optptr ;
 char* shoptarg ;

int
nextopt(const char *optstring)
{
 char *p;
 const char *q;
 char c;

 if ((p = nextopt_optptr) == ((void*)0) || *p == '\0') {
  p = *argptr;
  if (p == ((void*)0) || *p != '-' || *++p == '\0')
   return '\0';
  argptr++;
  if (p[0] == '-' && p[1] == '\0')
   return '\0';
 }
 c = *p++;
 for (q = optstring ; *q != c ; ) {
  if (*q == '\0')
   error("Illegal option -%c", c);
  if (*++q == ':')
   q++;
 }
 if (*++q == ':') {
  if (*p == '\0' && (p = *argptr++) == ((void*)0))
   error("No arg for -%c option", c);
  shoptarg = p;
  p = ((void*)0);
 }
 nextopt_optptr = p;
 return c;
}
