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
struct TYPE_2__ {unsigned int statbar_ctx_id; int /*<<< orphan*/ * statbar; } ;
typedef  int /*<<< orphan*/  GtkWidget ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 TYPE_1__* pgctx ; 

__attribute__((used)) static GtkWidget *FUNC3(void)
{
	GtkWidget *stbar;
	unsigned ctxid;

	stbar = FUNC2();

	ctxid = FUNC1(FUNC0(stbar),
					     "perf report");
	pgctx->statbar = stbar;
	pgctx->statbar_ctx_id = ctxid;

	return stbar;
}