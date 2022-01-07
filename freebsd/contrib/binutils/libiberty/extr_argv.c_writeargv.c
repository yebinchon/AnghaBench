
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ EOF ;
 char const EOS ;
 scalar_t__ ISSPACE (char) ;
 scalar_t__ fputc (char,int *) ;

int
writeargv (char **argv, FILE *f)
{
  int status = 0;

  if (f == ((void*)0))
    return 1;

  while (*argv != ((void*)0))
    {
      const char *arg = *argv;

      while (*arg != EOS)
        {
          char c = *arg;

          if (ISSPACE(c) || c == '\\' || c == '\'' || c == '"')
            if (EOF == fputc ('\\', f))
              {
                status = 1;
                goto done;
              }

          if (EOF == fputc (c, f))
            {
              status = 1;
              goto done;
            }
          arg++;
        }

      if (EOF == fputc ('\n', f))
        {
          status = 1;
          goto done;
        }
      argv++;
    }

 done:
  return status;
}
