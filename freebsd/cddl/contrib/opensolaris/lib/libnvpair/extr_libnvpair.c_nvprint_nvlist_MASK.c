#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  TYPE_1__* nvlist_prtctl_t ;
struct TYPE_5__ {scalar_t__ nvprt_indentinc; int /*<<< orphan*/  nvprt_indent; int /*<<< orphan*/ * nvprt_fp; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC3(nvlist_prtctl_t pctl, void *private,
    nvlist_t *nvl, const char *name, nvlist_t *value)
{
	FILE *fp = pctl->nvprt_fp;

	FUNC1(pctl, 1);
	(void) FUNC0(fp, "%s = (embedded nvlist)\n", name);

	pctl->nvprt_indent += pctl->nvprt_indentinc;
	FUNC2(value, pctl);
	pctl->nvprt_indent -= pctl->nvprt_indentinc;

	FUNC1(pctl, 1);
	(void) FUNC0(fp, "(end %s)\n", name);

	return (1);
}