
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int GET_MODE_NAME (int) ;
 int NUM_MACHINE_MODES ;
 int fatal_with_file_and_line (int *,char*,char const*) ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static int
find_mode (const char *name, FILE *infile)
{
  int i;

  for (i = 0; i < NUM_MACHINE_MODES; i++)
    if (strcmp (GET_MODE_NAME (i), name) == 0)
      return i;

  fatal_with_file_and_line (infile, "unknown mode `%s'", name);
}
