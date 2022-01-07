
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* part1; } ;


 int abort () ;
 scalar_t__ check_live_switch (int,size_t) ;
 int compare_version_strings (char const*,char const*) ;
 int fatal (char*,...) ;
 int n_switches ;
 size_t strlen (char const*) ;
 int strncmp (char*,char const*,size_t) ;
 TYPE_1__* switches ;

__attribute__((used)) static const char *
version_compare_spec_function (int argc, const char **argv)
{
  int comp1, comp2;
  size_t switch_len;
  const char *switch_value = ((void*)0);
  int nargs = 1, i;
  bool result;

  if (argc < 3)
    fatal ("too few arguments to %%:version-compare");
  if (argv[0][0] == '\0')
    abort ();
  if ((argv[0][1] == '<' || argv[0][1] == '>') && argv[0][0] != '!')
    nargs = 2;
  if (argc != nargs + 3)
    fatal ("too many arguments to %%:version-compare");

  switch_len = strlen (argv[nargs + 1]);
  for (i = 0; i < n_switches; i++)
    if (!strncmp (switches[i].part1, argv[nargs + 1], switch_len)
 && check_live_switch (i, switch_len))
      switch_value = switches[i].part1 + switch_len;

  if (switch_value == ((void*)0))
    comp1 = comp2 = -1;
  else
    {
      comp1 = compare_version_strings (switch_value, argv[1]);
      if (nargs == 2)
 comp2 = compare_version_strings (switch_value, argv[2]);
      else
 comp2 = -1;
    }

  switch (argv[0][0] << 8 | argv[0][1])
    {
    case '>' << 8 | '=':
      result = comp1 >= 0;
      break;
    case '!' << 8 | '<':
      result = comp1 >= 0 || switch_value == ((void*)0);
      break;
    case '<' << 8:
      result = comp1 < 0;
      break;
    case '!' << 8 | '>':
      result = comp1 < 0 || switch_value == ((void*)0);
      break;
    case '>' << 8 | '<':
      result = comp1 >= 0 && comp2 < 0;
      break;
    case '<' << 8 | '>':
      result = comp1 < 0 || comp2 >= 0;
      break;

    default:
      fatal ("unknown operator '%s' in %%:version-compare", argv[0]);
    }
  if (! result)
    return ((void*)0);

  return argv[nargs + 2];
}
