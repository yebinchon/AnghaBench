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
struct TYPE_2__ {int /*<<< orphan*/  data; int /*<<< orphan*/  fn; } ;
struct probe_arg {int /*<<< orphan*/  comm; int /*<<< orphan*/  name; TYPE_1__ fetch; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bitfield ; 
 int /*<<< orphan*/  deref ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  symbol ; 

__attribute__((used)) static void FUNC5(struct probe_arg *arg)
{
	if (FUNC0(bitfield, arg->fetch.fn))
		FUNC1(arg->fetch.data);
	else if (FUNC0(deref, arg->fetch.fn))
		FUNC2(arg->fetch.data);
	else if (FUNC0(symbol, arg->fetch.fn))
		FUNC3(arg->fetch.data);
	FUNC4(arg->name);
	FUNC4(arg->comm);
}