
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int as_where (char**,unsigned int*) ;
 int fprintf (int ,char*,char*,unsigned int) ;
 int identify (char*) ;
 int stderr ;

__attribute__((used)) static void
as_show_where (void)
{
  char *file;
  unsigned int line;

  as_where (&file, &line);
  identify (file);
  if (file)
    fprintf (stderr, "%s:%u: ", file, line);
}
