
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
n_alternatives (const char *s)
{
  int n = 1;

  if (s)
    while (*s)
      n += (*s++ == ',');

  return n;
}
