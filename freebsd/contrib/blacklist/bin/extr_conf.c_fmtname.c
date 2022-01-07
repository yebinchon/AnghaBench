
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rulename ;
 size_t strlen (int ) ;
 scalar_t__ strncmp (char const*,int ,size_t) ;

__attribute__((used)) static const char *
fmtname(const char *n) {
 size_t l = strlen(rulename);
 if (l == 0)
  return "*";
 if (strncmp(n, rulename, l) == 0) {
  if (n[l] != '\0')
   return n + l;
  else
   return "*";
 } else if (!*n)
  return "=";
 else
  return n;
}
