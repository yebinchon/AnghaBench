#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_4__ {int /*<<< orphan*/ * regs; } ;
typedef  TYPE_1__ dataflow_set ;
struct TYPE_5__ {TYPE_1__ out; } ;
typedef  int /*<<< orphan*/  HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ BLKmode ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  ENTRY_BLOCK_PTR ; 
 size_t FIRST_PSEUDO_REGISTER ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ PARM_DECL ; 
 size_t FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 TYPE_3__* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_function_decl ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC15 (void)
{
  tree parm;
  
  for (parm = FUNC0 (current_function_decl);
       parm; parm = FUNC8 (parm))
    {
      rtx decl_rtl = FUNC3 (parm);
      rtx incoming = FUNC1 (parm);
      tree decl;
      HOST_WIDE_INT offset;
      dataflow_set *out;

      if (FUNC9 (parm) != PARM_DECL)
	continue;

      if (!FUNC2 (parm))
	continue;

      if (!decl_rtl || !incoming)
	continue;

      if (FUNC4 (decl_rtl) == BLKmode || FUNC4 (incoming) == BLKmode)
	continue;

      if (!FUNC14 (incoming, &decl, &offset))
	if (!FUNC14 (decl_rtl, &decl, &offset))
	  continue;

      if (!decl)
	continue;

      FUNC12 (parm == decl);

      out = &FUNC10 (ENTRY_BLOCK_PTR)->out;

      if (FUNC7 (incoming))
	{
	  FUNC12 (FUNC6 (incoming) < FIRST_PSEUDO_REGISTER);
	  FUNC11 (&out->regs[FUNC6 (incoming)],
			     parm, offset, incoming);
	  FUNC13 (out, incoming, parm, offset);
	}
      else if (FUNC5 (incoming))
	FUNC13 (out, incoming, parm, offset);
    }
}