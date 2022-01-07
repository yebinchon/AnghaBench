
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int GET_RTX_NAME (int) ;
 int NUM_RTX_CODE ;
 int fatal_with_file_and_line (int *,char*,char const*) ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static int
find_code (const char *name, FILE *infile)
{
  int i;

  for (i = 0; i < NUM_RTX_CODE; i++)
    if (strcmp (GET_RTX_NAME (i), name) == 0)
      return i;

  fatal_with_file_and_line (infile, "unknown rtx code `%s'", name);
}
