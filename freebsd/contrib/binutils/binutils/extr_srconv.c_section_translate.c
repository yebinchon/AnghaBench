
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static char *
section_translate (char *n)
{
  if (strcmp (n, ".text") == 0)
    return "P";
  if (strcmp (n, ".data") == 0)
    return "D";
  if (strcmp (n, ".bss") == 0)
    return "B";
  return n;
}
