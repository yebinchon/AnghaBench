
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void
hook_char_replace (char *string, size_t len, char replacethis, char withthis)
{
  int i = 0;
  for (i = 0; i < len; i++)
    if (string[i] == replacethis)
      string[i] = withthis;
}
