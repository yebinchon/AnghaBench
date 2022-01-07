
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isspace (char const) ;

__attribute__((used)) static inline int has_text(const char *text)
{
 if (!text)
  return 0;

 while (*text) {
  if (!isspace(*text))
   return 1;
  text++;
 }

 return 0;
}
