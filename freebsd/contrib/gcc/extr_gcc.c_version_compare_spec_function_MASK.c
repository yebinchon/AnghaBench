#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* part1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int,size_t) ; 
 int FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int n_switches ; 
 size_t FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,size_t) ; 
 TYPE_1__* switches ; 

__attribute__((used)) static const char *
FUNC6 (int argc, const char **argv)
{
  int comp1, comp2;
  size_t switch_len;
  const char *switch_value = NULL;
  int nargs = 1, i;
  bool result;

  if (argc < 3)
    FUNC3 ("too few arguments to %%:version-compare");
  if (argv[0][0] == '\0')
    FUNC0 ();
  if ((argv[0][1] == '<' || argv[0][1] == '>') && argv[0][0] != '!')
    nargs = 2;
  if (argc != nargs + 3)
    FUNC3 ("too many arguments to %%:version-compare");

  switch_len = FUNC4 (argv[nargs + 1]);
  for (i = 0; i < n_switches; i++)
    if (!FUNC5 (switches[i].part1, argv[nargs + 1], switch_len)
	&& FUNC1 (i, switch_len))
      switch_value = switches[i].part1 + switch_len;

  if (switch_value == NULL)
    comp1 = comp2 = -1;
  else
    {
      comp1 = FUNC2 (switch_value, argv[1]);
      if (nargs == 2)
	comp2 = FUNC2 (switch_value, argv[2]);
      else
	comp2 = -1;  /* This value unused.  */
    }

  switch (argv[0][0] << 8 | argv[0][1])
    {
    case '>' << 8 | '=':
      result = comp1 >= 0;
      break;
    case '!' << 8 | '<':
      result = comp1 >= 0 || switch_value == NULL;
      break;
    case '<' << 8:
      result = comp1 < 0;
      break;
    case '!' << 8 | '>':
      result = comp1 < 0 || switch_value == NULL;
      break;
    case '>' << 8 | '<':
      result = comp1 >= 0 && comp2 < 0;
      break;
    case '<' << 8 | '>':
      result = comp1 < 0 || comp2 >= 0;
      break;

    default:
      FUNC3 ("unknown operator '%s' in %%:version-compare", argv[0]);
    }
  if (! result)
    return NULL;

  return argv[nargs + 2];
}