
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 int n_infiles ;
 scalar_t__* outfiles ;
 int strcmp (scalar_t__,char const*) ;
 scalar_t__ xstrdup (char const*) ;

__attribute__((used)) static const char *
replace_outfile_spec_function (int argc, const char **argv)
{
  int i;

  if (argc != 2)
    abort ();

  for (i = 0; i < n_infiles; i++)
    {
      if (outfiles[i] && !strcmp (outfiles[i], argv[0]))
 outfiles[i] = xstrdup (argv[1]);
    }
  return ((void*)0);
}
