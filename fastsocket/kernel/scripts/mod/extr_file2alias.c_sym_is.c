
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char const*) ;
 char* strstr (char const*,char const*) ;

__attribute__((used)) static inline int sym_is(const char *symbol, const char *name)
{
 const char *match;

 match = strstr(symbol, name);
 if (!match)
  return 0;
 return match[strlen(symbol)] == '\0';
}
