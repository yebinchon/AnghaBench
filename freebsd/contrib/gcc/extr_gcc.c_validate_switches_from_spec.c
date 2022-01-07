
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* validate_switches (char const*) ;

__attribute__((used)) static inline void
validate_switches_from_spec (const char *spec)
{
  const char *p = spec;
  char c;
  while ((c = *p++))
    if (c == '%' && (*p == '{' || *p == '<' || (*p == 'W' && *++p == '{')))

      p = validate_switches (p + 1);
}
