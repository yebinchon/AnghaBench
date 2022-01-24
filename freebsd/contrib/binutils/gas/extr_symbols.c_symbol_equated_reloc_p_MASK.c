#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ X_op; int /*<<< orphan*/ * X_op_symbol; } ;
struct TYPE_9__ {TYPE_1__ sy_value; scalar_t__ sy_resolved; } ;
typedef  TYPE_2__ symbolS ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ O_symbol ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

int
FUNC4 (symbolS *s)
{
  if (FUNC0 (s))
    return 0;
  /* X_op_symbol, normally not used for O_symbol, is set by
     resolve_symbol_value to flag expression syms that have been
     equated.  */
  return (s->sy_value.X_op == O_symbol
#if defined (OBJ_COFF) && defined (TE_PE)
	  && ! S_IS_WEAK (s)
#endif
	  && ((s->sy_resolved && s->sy_value.X_op_symbol != NULL)
	      || ! FUNC2 (s)
	      || FUNC1 (s)));
}