#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct cgraph_varpool_node {int dummy; } ;
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_3__ {scalar_t__ (* ttype ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {TYPE_1__ asm_out; } ;

/* Variables and functions */
 scalar_t__ ADDR_EXPR ; 
 int BITS_PER_UNIT ; 
 int DW_EH_PE_absptr ; 
 int DW_EH_PE_aligned ; 
 int /*<<< orphan*/  EXPAND_INITIALIZER ; 
 scalar_t__ INTEGER_CST ; 
 int /*<<< orphan*/  NULL_RTX ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ VAR_DECL ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct cgraph_varpool_node*) ; 
 struct cgraph_varpool_node* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_2__ targetm ; 

__attribute__((used)) static void
FUNC12 (tree type, int tt_format, int tt_format_size)
{
  rtx value;
  bool public = true;

  if (type == NULL_TREE)
    value = const0_rtx;
  else
    {
      struct cgraph_varpool_node *node;

      type = FUNC10 (type);
      value = FUNC8 (type, NULL_RTX, VOIDmode, EXPAND_INITIALIZER);

      /* Let cgraph know that the rtti decl is used.  Not all of the
	 paths below go through assemble_integer, which would take
	 care of this for us.  */
      FUNC0 (type);
      if (FUNC1 (type) == ADDR_EXPR)
	{
	  type = FUNC2 (type, 0);
	  if (FUNC1 (type) == VAR_DECL)
	    {
	      node = FUNC6 (type);
	      if (node)
		FUNC5 (node);
	      public = FUNC3 (type);
	    }
	}
      else
	FUNC9 (FUNC1 (type) == INTEGER_CST);
    }

  /* Allow the target to override the type table entry format.  */
  if (targetm.asm_out.ttype (value))
    return;

  if (tt_format == DW_EH_PE_absptr || tt_format == DW_EH_PE_aligned)
    FUNC4 (value, tt_format_size,
		      tt_format_size * BITS_PER_UNIT, 1);
  else
    FUNC7 (tt_format, value, public, NULL);
}