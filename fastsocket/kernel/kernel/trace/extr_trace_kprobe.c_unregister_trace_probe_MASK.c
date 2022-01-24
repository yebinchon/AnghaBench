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
struct TYPE_2__ {int /*<<< orphan*/  kp; } ;
struct trace_probe {int /*<<< orphan*/  list; TYPE_1__ rp; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct trace_probe*) ; 
 scalar_t__ FUNC2 (struct trace_probe*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct trace_probe*) ; 

__attribute__((used)) static int FUNC6(struct trace_probe *tp)
{
	/* Enabled event can not be unregistered */
	if (FUNC1(tp))
		return -EBUSY;

	if (FUNC2(tp))
		FUNC4(&tp->rp);
	else
		FUNC3(&tp->rp.kp);
	FUNC0(&tp->list);
	FUNC5(tp);

	return 0;
}