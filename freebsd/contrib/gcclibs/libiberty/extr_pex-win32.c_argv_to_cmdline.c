
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* xmalloc (size_t) ;

__attribute__((used)) static char *
argv_to_cmdline (char *const *argv)
{
  char *cmdline;
  char *p;
  size_t cmdline_len;
  int i, j, k;

  cmdline_len = 0;
  for (i = 0; argv[i]; i++)
    {





      for (j = 0; argv[i][j]; j++)
 {
   if (argv[i][j] == '"')
     {

       for (k = j - 1; k >= 0 && argv[i][k] == '\\'; k--)
  cmdline_len++;

       cmdline_len++;
     }
 }


      for (k = j - 1; k >= 0 && argv[i][k] == '\\'; k--)
 cmdline_len++;
      cmdline_len += j;
      cmdline_len += 3;
    }
  cmdline = xmalloc (cmdline_len);
  p = cmdline;
  for (i = 0; argv[i]; i++)
    {
      *p++ = '"';
      for (j = 0; argv[i][j]; j++)
 {
   if (argv[i][j] == '"')
     {
       for (k = j - 1; k >= 0 && argv[i][k] == '\\'; k--)
  *p++ = '\\';
       *p++ = '\\';
     }
   *p++ = argv[i][j];
 }
      for (k = j - 1; k >= 0 && argv[i][k] == '\\'; k--)
 *p++ = '\\';
      *p++ = '"';
      *p++ = ' ';
    }
  p[-1] = '\0';
  return cmdline;
}
