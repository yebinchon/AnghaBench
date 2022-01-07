
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,char const*) ;

__attribute__((used)) static void
no_dead_strip (FILE *file, const char *lab)
{
  fprintf (file, ".no_dead_strip %s\n", lab);
}
