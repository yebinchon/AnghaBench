#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_3__* X_op_symbol; TYPE_3__* X_add_symbol; } ;
struct TYPE_14__ {int sy_resolving; TYPE_2__ sy_value; scalar_t__ sy_forward_ref; TYPE_1__* bsym; } ;
typedef  TYPE_3__ symbolS ;
struct TYPE_12__ {scalar_t__ section; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 scalar_t__ expr_section ; 
 TYPE_3__* FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ) ; 

symbolS *
FUNC5 (symbolS *symbolP, int is_forward)
{
  if (symbolP && !FUNC0 (symbolP))
    {
      symbolS *add_symbol = symbolP->sy_value.X_add_symbol;
      symbolS *op_symbol = symbolP->sy_value.X_op_symbol;

      if (symbolP->sy_forward_ref)
	is_forward = 1;

      if (is_forward)
	{
	  /* assign_symbol() clones volatile symbols; pre-existing expressions
	     hold references to the original instance, but want the current
	     value.  Just repeat the lookup.  */
	  if (add_symbol && FUNC2 (add_symbol))
	    add_symbol = FUNC4 (FUNC1 (add_symbol));
	  if (op_symbol && FUNC2 (op_symbol))
	    op_symbol = FUNC4 (FUNC1 (op_symbol));
	}

      /* Re-using sy_resolving here, as this routine cannot get called from
	 symbol resolution code.  */
      if (symbolP->bsym->section == expr_section && !symbolP->sy_resolving)
	{
	  symbolP->sy_resolving = 1;
	  add_symbol = FUNC5 (add_symbol, is_forward);
	  op_symbol = FUNC5 (op_symbol, is_forward);
	  symbolP->sy_resolving = 0;
	}

      if (symbolP->sy_forward_ref
	  || add_symbol != symbolP->sy_value.X_add_symbol
	  || op_symbol != symbolP->sy_value.X_op_symbol)
	symbolP = FUNC3 (symbolP, 0);

      symbolP->sy_value.X_add_symbol = add_symbol;
      symbolP->sy_value.X_op_symbol = op_symbol;
    }

  return symbolP;
}