
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_exit_sections ;
 char* malloc (int) ;
 scalar_t__ match (char const*,int ) ;
 int strcat (char*,char*) ;
 int * strstr (char const*,char*) ;

__attribute__((used)) static char *sec2annotation(const char *s)
{
 if (match(s, init_exit_sections)) {
  char *p = malloc(20);
  char *r = p;

  *p++ = '_';
  *p++ = '_';
  if (*s == '.')
   s++;
  while (*s && *s != '.')
   *p++ = *s++;
  *p = '\0';
  if (*s == '.')
   s++;
  if (strstr(s, "rodata") != ((void*)0))
   strcat(p, "const ");
  else if (strstr(s, "data") != ((void*)0))
   strcat(p, "data ");
  else
   strcat(p, " ");
  return r;
 } else {
  return "";
 }
}
