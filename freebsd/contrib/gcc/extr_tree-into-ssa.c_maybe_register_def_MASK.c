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
typedef  int /*<<< orphan*/  tree ;
typedef  int /*<<< orphan*/  def_operand_p ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC11 (def_operand_p def_p, tree stmt)
{
  tree def = FUNC1 (def_p);
  tree sym = FUNC0 (def) ? def : FUNC3 (def);

  /* If DEF is a naked symbol that needs renaming, create a
     new name for it.  */
  if (FUNC10 (sym))
    {
      if (FUNC0 (def))
	{
	  def = FUNC6 (def, stmt);
	  FUNC2 (def_p, def);
	}

      FUNC9 (def, sym);
    }
  else
    {
      /* If DEF is a new name, register it as a new definition
	 for all the names replaced by DEF.  */
      if (FUNC4 (def))
	FUNC8 (def, FUNC7 (def));

      /* If DEF is an old name, register DEF as a new
	 definition for itself.  */
      if (FUNC5 (def))
	FUNC9 (def, def);
    }
}