
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
matchkey(const char *start, const char *end, const char *key)
{
  if (!start)
    return 0;
  for (; start != end; start++, key++)
    if (*start != *key && *start != 'A' + (*key - 'a'))
      return 0;
  return *key == '\0';
}
