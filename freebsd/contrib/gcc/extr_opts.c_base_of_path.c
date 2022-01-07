
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_DIR_SEPARATOR (char) ;

__attribute__((used)) static int
base_of_path (const char *path, const char **base_out)
{
  const char *base = path;
  const char *dot = 0;
  const char *p = path;
  char c = *p;
  while (c)
    {
      if (IS_DIR_SEPARATOR(c))
        {
          base = p + 1;
          dot = 0;
        }
      else if (c == '.')
        dot = p;
      c = *++p;
    }
  if (!dot)
    dot = p;
  *base_out = base;
  return dot - base;
}
