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
struct TYPE_2__ {int initialized; int /*<<< orphan*/ * comm_list; int /*<<< orphan*/ * dso_list; int /*<<< orphan*/ * sym_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ symbol_conf ; 
 int /*<<< orphan*/  FUNC1 () ; 

void FUNC2(void)
{
	if (!symbol_conf.initialized)
		return;
	FUNC0(symbol_conf.sym_list);
	FUNC0(symbol_conf.dso_list);
	FUNC0(symbol_conf.comm_list);
	FUNC1();
	symbol_conf.sym_list = symbol_conf.dso_list = symbol_conf.comm_list = NULL;
	symbol_conf.initialized = false;
}