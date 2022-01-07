
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 char* strstr (char const*,char const*) ;

__attribute__((used)) static int
match_substring (const char *string, const char *substr)
{
  int substr_len = strlen(substr);
  const char *tok;

  while ((tok = strstr (string, substr)) != ((void*)0))
    {

      if (tok == string
   || tok[-1] == ' '
   || tok[-1] == '\t')
      {

 if (tok[substr_len] == ' '
     || tok[substr_len] == '\t'
     || tok[substr_len] == '\0')
 {

   return 1;
 }
      }

      string = tok + 1;
    }
  return 0;
}
