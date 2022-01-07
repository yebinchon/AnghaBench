
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char) ;

__attribute__((used)) static char *
ep_parse_optional_filename (char **arg)
{
  static char filename[1024];
  char *arg_p = *arg;
  int i;
  char c;

  if ((*arg_p == '\0') || isspace (*arg_p))
    return ((void*)0);

  for (i = 0;; i++)
    {
      c = *arg_p;
      if (isspace (c))
 c = '\0';
      filename[i] = c;
      if (c == '\0')
 break;
      arg_p++;
    }
  *arg = arg_p;

  return filename;
}
