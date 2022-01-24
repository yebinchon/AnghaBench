#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int t_flags; TYPE_5__* t_intr; int /*<<< orphan*/  t_type; int /*<<< orphan*/  t_id; int /*<<< orphan*/  t_size; int /*<<< orphan*/  t_name; } ;
typedef  TYPE_1__ tdesc_t ;
typedef  int /*<<< orphan*/  intr_t ;
typedef  int /*<<< orphan*/  dwarf_t ;
struct TYPE_8__ {size_t intr_nbits; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTRINSIC ; 
 int TDESC_F_RESOLVED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static tdesc_t *
FUNC6(dwarf_t *dw, tdesc_t *old, size_t bitsz)
{
	tdesc_t *new = FUNC4(sizeof (tdesc_t));

	if (!(old->t_flags & TDESC_F_RESOLVED)) {
		FUNC3("tdp %u: attempt to make a bit field from an "
		    "unresolved type\n", old->t_id);
	}

	new->t_name = FUNC5(old->t_name);
	new->t_size = old->t_size;
	new->t_id = FUNC1(dw);
	new->t_type = INTRINSIC;
	new->t_flags = TDESC_F_RESOLVED;

	new->t_intr = FUNC4(sizeof (intr_t));
	FUNC0(old->t_intr, new->t_intr, sizeof (intr_t));
	new->t_intr->intr_nbits = bitsz;

	FUNC2(dw, new);

	return (new);
}