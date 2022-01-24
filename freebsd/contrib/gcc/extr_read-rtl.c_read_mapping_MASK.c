#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mapping {struct map_value* values; } ;
struct map_value {int dummy; } ;
struct macro_group {int (* find_builtin ) (char*,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  htab_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 struct map_value** FUNC0 (struct map_value**,int,char const*) ; 
 struct mapping* FUNC1 (struct macro_group*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mapping *
FUNC8 (struct macro_group *group, htab_t table, FILE *infile)
{
  char tmp_char[256];
  struct mapping *m;
  struct map_value **end_ptr;
  const char *string;
  int number, c;

  /* Read the mapping name and create a structure for it.  */
  FUNC3 (tmp_char, infile);
  m = FUNC1 (group, table, tmp_char, infile);

  c = FUNC4 (infile);
  if (c != '[')
    FUNC2 (infile, '[', c);

  /* Read each value.  */
  end_ptr = &m->values;
  c = FUNC4 (infile);
  do
    {
      if (c != '(')
	{
	  /* A bare symbol name that is implicitly paired to an
	     empty string.  */
	  FUNC7 (c, infile);
	  FUNC3 (tmp_char, infile);
	  string = "";
	}
      else
	{
	  /* A "(name string)" pair.  */
	  FUNC3 (tmp_char, infile);
	  string = FUNC5 (infile, false);
	  c = FUNC4 (infile);
	  if (c != ')')
	    FUNC2 (infile, ')', c);
	}
      number = group->find_builtin (tmp_char, infile);
      end_ptr = FUNC0 (end_ptr, number, string);
      c = FUNC4 (infile);
    }
  while (c != ']');

  c = FUNC4 (infile);
  if (c != ')')
    FUNC2 (infile, ')', c);

  return m;
}