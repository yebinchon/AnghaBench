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
struct snmp_context {int dummy; } ;
struct context {struct snmp_context ctx; int /*<<< orphan*/  dlist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct context* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct context*,int /*<<< orphan*/ ,int) ; 

struct snmp_context *
FUNC3(void)
{
	struct context *context;

	if ((context = FUNC1(sizeof(*context))) == NULL)
		return (NULL);

	FUNC2(context, 0, sizeof(*context));
	FUNC0(&context->dlist);

	return (&context->ctx);
}