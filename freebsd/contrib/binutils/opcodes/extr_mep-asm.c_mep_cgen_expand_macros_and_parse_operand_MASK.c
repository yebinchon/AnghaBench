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
typedef  int /*<<< orphan*/  CGEN_FIELDS ;
typedef  int /*<<< orphan*/  CGEN_CPU_DESC ;

/* Variables and functions */
 char* FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int,char const**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*) ; 
 char* FUNC4 (char const*,char*) ; 

const char *
FUNC5 (CGEN_CPU_DESC cd, int opindex,
					  const char ** strp_in, CGEN_FIELDS * fields)
{
  const char * errmsg = NULL;
  char *str = 0, *hold = 0;
  const char **strp = 0;

  /* Set up a new pointer to macro-expanded string.  */
  str = FUNC0 (*strp_in, 1);
  /* fprintf (stderr, " expanded <<%s>> to <<%s>>\n", *strp_in, str); */

  hold = str;
  strp = (const char **)(&str);

  errmsg = FUNC2 (cd, opindex, strp, fields);

  /* Now work out the advance.  */
  if (FUNC3 (str) == 0)
    *strp_in += FUNC3 (*strp_in);

  else
    {
      if (FUNC4 (*strp_in, str))
	/* A macro-expansion was pulled off the front.  */
	*strp_in = FUNC4 (*strp_in, str);  
      else
	/* A non-macro-expansion was pulled off the front.  */
	*strp_in += (str - hold); 
    }

  if (hold)
    FUNC1 (hold);

  return errmsg;
}