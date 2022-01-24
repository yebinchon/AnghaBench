#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int nprim; } ;
struct policydb {struct cond_bool_datum** bool_val_to_struct; TYPE_1__ p_bools; } ;
struct cond_bool_datum {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct cond_bool_datum**) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 

int FUNC2(struct policydb *p)
{
	FUNC0(p->bool_val_to_struct);
	p->bool_val_to_struct = (struct cond_bool_datum **)
		FUNC1(p->p_bools.nprim * sizeof(struct cond_bool_datum *), GFP_KERNEL);
	if (!p->bool_val_to_struct)
		return -1;
	return 0;
}