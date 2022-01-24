#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  valueT ;
struct TYPE_10__ {scalar_t__ X_op; int /*<<< orphan*/  X_add_number; TYPE_2__* X_add_symbol; } ;
struct TYPE_11__ {TYPE_1__ sy_value; int /*<<< orphan*/  sy_resolved; } ;
typedef  TYPE_2__ symbolS ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ O_constant ; 
 scalar_t__ O_symbol ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  finalize_syms ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

valueT
FUNC8 (symbolS *s)
{
  if (FUNC0 (s))
    return FUNC7 (s);

  if (!s->sy_resolved)
    {
      valueT val = FUNC7 (s);
      if (!finalize_syms)
	return val;
    }
  if (FUNC4 (s))
    return FUNC8 (s->sy_value.X_add_symbol);

  if (s->sy_value.X_op != O_constant)
    {
      if (! s->sy_resolved
	  || s->sy_value.X_op != O_symbol
	  || (FUNC3 (s) && ! FUNC2 (s)))
	FUNC6 (FUNC5("attempt to get value of unresolved symbol `%s'"),
		FUNC1 (s));
    }
  return (valueT) s->sy_value.X_add_number;
}