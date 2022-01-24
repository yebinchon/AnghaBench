#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * ii_owner; int /*<<< orphan*/ * ii_name; } ;
typedef  TYPE_1__ iidesc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 

iidesc_t *
FUNC3(iidesc_t *src, char const *name, char const *owner)
{
	iidesc_t *tgt = FUNC1(src);
	FUNC0(tgt->ii_name);
	FUNC0(tgt->ii_owner);

	tgt->ii_name = name ? FUNC2(name) : NULL;
	tgt->ii_owner = owner ? FUNC2(owner) : NULL;

	return (tgt);
}