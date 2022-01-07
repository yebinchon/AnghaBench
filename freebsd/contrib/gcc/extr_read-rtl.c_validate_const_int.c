
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int ISDIGIT (char const) ;
 scalar_t__ ISSPACE (char const) ;
 int fatal_with_file_and_line (int *,char*,char const*) ;

__attribute__((used)) static void
validate_const_int (FILE *infile, const char *string)
{
  const char *cp;
  int valid = 1;

  cp = string;
  while (*cp && ISSPACE (*cp))
    cp++;
  if (*cp == '-' || *cp == '+')
    cp++;
  if (*cp == 0)
    valid = 0;
  for (; *cp; cp++)
    if (! ISDIGIT (*cp))
      valid = 0;
  if (!valid)
    fatal_with_file_and_line (infile, "invalid decimal constant \"%s\"\n", string);
}
