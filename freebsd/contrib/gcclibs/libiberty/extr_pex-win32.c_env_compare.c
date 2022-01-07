
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ tolower (int ) ;

__attribute__((used)) static int
env_compare (const void *a_ptr, const void *b_ptr)
{
  const char *a;
  const char *b;
  unsigned char c1;
  unsigned char c2;

  a = *(const char **) a_ptr;
  b = *(const char **) b_ptr;
  do
    {
      c1 = (unsigned char) tolower (*a++);
      c2 = (unsigned char) tolower (*b++);

      if (c1 == '=')
        c1 = '\0';

      if (c2 == '=')
        c2 = '\0';
    }
  while (c1 == c2 && c1 != '\0');

  return c1 - c2;
}
