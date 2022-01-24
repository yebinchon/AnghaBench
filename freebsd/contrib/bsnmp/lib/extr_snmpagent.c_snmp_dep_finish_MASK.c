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
struct snmp_context {int /*<<< orphan*/ * dep; } ;
struct depend {int /*<<< orphan*/  (* func ) (struct snmp_context*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  dep; } ;
struct context {int /*<<< orphan*/  dlist; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNMP_DEPOP_FINISH ; 
 struct depend* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct depend*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct depend*) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC3 (struct snmp_context*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC4(struct snmp_context *ctx)
{
	struct context *context = (struct context *)ctx;
	struct depend *d;

	while ((d = FUNC0(&context->dlist)) != NULL) {
		ctx->dep = &d->dep;
		(void)d->func(ctx, ctx->dep, SNMP_DEPOP_FINISH);
		FUNC1(&context->dlist, d, link);
		FUNC2(d);
	}
}