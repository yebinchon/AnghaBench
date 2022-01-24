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
typedef  int /*<<< orphan*/  symbolS ;

/* Variables and functions */
 int RNUM_MASK ; 
 int RTYPE_GP ; 
 unsigned int RTYPE_VEC ; 
 unsigned int RWARN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char) ; 
 scalar_t__ FUNC4 (char) ; 
 scalar_t__ FUNC5 (char*,unsigned long*) ; 
 scalar_t__ itbl_have_entries ; 
 scalar_t__ reg_section ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 

__attribute__((used)) static int
FUNC7 (char **s, unsigned int types, unsigned int *regnop)
{
  symbolS *symbolP;
  char *e;
  char save_c;
  int reg = -1;

  /* Find end of name.  */
  e = *s;
  if (FUNC3 (*e))
    ++e;
  while (FUNC4 (*e))
    ++e;

  /* Terminate name.  */
  save_c = *e;
  *e = '\0';

  /* Look for a register symbol.  */
  if ((symbolP = FUNC6 (*s)) && FUNC0 (symbolP) == reg_section)
    {
      int r = FUNC1 (symbolP);
      if (r & types)
	reg = r & RNUM_MASK;
      else if ((types & RTYPE_VEC) && (r & ~1) == (RTYPE_GP | 2))
	/* Convert GP reg $v0/1 to MDMX reg $v0/1!  */
	reg = (r & RNUM_MASK) - 2;
    }
  /* Else see if this is a register defined in an itbl entry.  */
  else if ((types & RTYPE_GP) && itbl_have_entries)
    {
      char *n = *s;
      unsigned long r;

      if (*n == '$')
	++n;
      if (FUNC5 (n, &r))
	reg = r & RNUM_MASK;
    }

  /* Advance to next token if a register was recognised.  */
  if (reg >= 0)
    *s = e;
  else if (types & RWARN)
    FUNC2 ("Unrecognized register name `%s'", *s);

  *e = save_c;
  if (regnop)
    *regnop = reg;
  return reg >= 0;
}