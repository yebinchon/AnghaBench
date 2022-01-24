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
typedef  scalar_t__ rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 char* FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 scalar_t__ SYMBOL_REF ; 
 scalar_t__ UNSPEC ; 
 scalar_t__ UNSPECV_POOL_ENTRY ; 
 scalar_t__ UNSPEC_LTREF ; 
 scalar_t__ UNSPEC_LTREL_BASE ; 
 scalar_t__ UNSPEC_VOLATILE ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 scalar_t__ FUNC5 (scalar_t__,int) ; 
 scalar_t__ FUNC6 (scalar_t__,int,int) ; 
 int FUNC7 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void
FUNC9 (rtx x, rtx *ref)
{
  int i, j;
  const char *fmt;

  /* Ignore LTREL_BASE references.  */
  if (FUNC1 (x) == UNSPEC
      && FUNC5 (x, 1) == UNSPEC_LTREL_BASE)
    return;
  /* Likewise POOL_ENTRY insns.  */
  if (FUNC1 (x) == UNSPEC_VOLATILE
      && FUNC5 (x, 1) == UNSPECV_POOL_ENTRY)
    return;

  FUNC8 (FUNC1 (x) != SYMBOL_REF
              || !FUNC0 (x));

  if (FUNC1 (x) == UNSPEC && FUNC5 (x, 1) == UNSPEC_LTREF)
    {
      rtx sym = FUNC6 (x, 0, 0);
      FUNC8 (FUNC1 (sym) == SYMBOL_REF
	          && FUNC0 (sym));

      if (*ref == NULL_RTX)
	*ref = sym;
      else 
	FUNC8 (*ref == sym);

      return;
    }

  fmt = FUNC2 (FUNC1 (x));
  for (i = FUNC3 (FUNC1 (x)) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'e')
        {
          FUNC9 (FUNC4 (x, i), ref);
        }
      else if (fmt[i] == 'E')
        {
          for (j = 0; j < FUNC7 (x, i); j++)
            FUNC9 (FUNC6 (x, i, j), ref);
        }
    }
}