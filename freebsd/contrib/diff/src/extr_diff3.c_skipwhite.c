
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
skipwhite (char *s)
{
  while (*s == ' ' || *s == '\t')
    s++;
  return s;
}
