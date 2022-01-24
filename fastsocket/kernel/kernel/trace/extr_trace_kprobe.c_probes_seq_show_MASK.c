#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ offset; int /*<<< orphan*/  addr; } ;
struct TYPE_7__ {TYPE_2__ kp; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; int /*<<< orphan*/  system; } ;
struct trace_probe {int nr_args; TYPE_4__* args; TYPE_3__ rp; int /*<<< orphan*/  symbol; TYPE_1__ call; } ;
struct seq_file {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  comm; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,...) ; 
 scalar_t__ FUNC1 (struct trace_probe*) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_probe*) ; 

__attribute__((used)) static int FUNC3(struct seq_file *m, void *v)
{
	struct trace_probe *tp = v;
	int i;

	FUNC0(m, "%c", FUNC1(tp) ? 'r' : 'p');
	FUNC0(m, ":%s/%s", tp->call.system, tp->call.name);

	if (!tp->symbol)
		FUNC0(m, " 0x%p", tp->rp.kp.addr);
	else if (tp->rp.kp.offset)
		FUNC0(m, " %s+%u", FUNC2(tp),
			   tp->rp.kp.offset);
	else
		FUNC0(m, " %s", FUNC2(tp));

	for (i = 0; i < tp->nr_args; i++)
		FUNC0(m, " %s=%s", tp->args[i].name, tp->args[i].comm);
	FUNC0(m, "\n");

	return 0;
}