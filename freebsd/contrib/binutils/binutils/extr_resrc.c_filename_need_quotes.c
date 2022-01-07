
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
filename_need_quotes (const char *filename)
{
  if (filename == ((void*)0) || (filename[0] == '-' && filename[1] == 0))
    return 0;

  while (*filename != 0)
    {
      switch (*filename)
        {
        case '&':
        case ' ':
        case '<':
        case '>':
        case '|':
        case '%':
          return 1;
        }
      ++filename;
    }
  return 0;
}
