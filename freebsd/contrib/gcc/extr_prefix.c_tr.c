
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
tr (char *string, int c1, int c2)
{
  do
    {
      if (*string == c1)
 *string = c2;
    }
  while (*string++);
}
