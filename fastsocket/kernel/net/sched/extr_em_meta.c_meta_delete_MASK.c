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
struct meta_type_ops {int /*<<< orphan*/  (* destroy ) (int /*<<< orphan*/ *) ;} ;
struct meta_match {int /*<<< orphan*/  rvalue; int /*<<< orphan*/  lvalue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct meta_match*) ; 
 struct meta_type_ops* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct meta_match *meta)
{
	if (meta) {
		struct meta_type_ops *ops = FUNC1(&meta->lvalue);

		if (ops && ops->destroy) {
			ops->destroy(&meta->lvalue);
			ops->destroy(&meta->rvalue);
		}
	}

	FUNC0(meta);
}