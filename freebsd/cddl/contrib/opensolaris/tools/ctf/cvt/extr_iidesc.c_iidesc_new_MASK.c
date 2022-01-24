#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  ii_name; } ;
typedef  TYPE_1__ iidesc_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

iidesc_t *
FUNC2(char *name)
{
	iidesc_t *ii;

	ii = FUNC0(sizeof (iidesc_t));
	if (name)
		ii->ii_name = FUNC1(name);

	return (ii);
}