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
struct symbol {int dummy; } ;
struct minimal_symbol {int dummy; } ;
struct block {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct block*) ; 
 struct block* FUNC1 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC2 (struct minimal_symbol*) ; 
 struct block* FUNC3 (int /*<<< orphan*/ ) ; 
 struct symbol* FUNC4 (struct block*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 struct minimal_symbol* FUNC6 (int /*<<< orphan*/ ) ; 

CORE_ADDR
FUNC7 (CORE_ADDR pc)
{
  struct block *bl;
  struct minimal_symbol *msymbol;

  bl = FUNC3 (pc);
  if (bl)
    {
      struct symbol *symbol = FUNC4 (bl);

      if (symbol)
	{
	  bl = FUNC1 (symbol);
	  return FUNC0 (bl);
	}
    }

  msymbol = FUNC6 (pc);
  if (msymbol)
    {
      CORE_ADDR fstart = FUNC2 (msymbol);

      if (FUNC5 (fstart))
	return fstart;
    }

  return 0;
}