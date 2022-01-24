#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* args; } ;
union node {scalar_t__ type; TYPE_3__ ncmd; } ;
struct cmdentry {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  text; } ;
struct TYPE_5__ {TYPE_1__ narg; } ;

/* Variables and functions */
 scalar_t__ NCMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct cmdentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void
FUNC3(union node *n)
{
	struct cmdentry entry;

	if (n && n->type == NCMD && n->ncmd.args)
		if (FUNC1(n->ncmd.args->narg.text))
			FUNC0(n->ncmd.args->narg.text, &entry, 0,
				     FUNC2());
}