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
struct trace_iterator {int /*<<< orphan*/  seq; TYPE_1__* trace; scalar_t__ tr; int /*<<< orphan*/ * ent; } ;
struct seq_file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* print_header ) (struct seq_file*) ;int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct trace_iterator*) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct seq_file *m, void *v)
{
	struct trace_iterator *iter = v;

	if (iter->ent == NULL) {
		if (iter->tr) {
			FUNC1(m, "# tracer: %s\n", iter->trace->name);
			FUNC2(m, "#\n");
		}
		if (iter->trace && iter->trace->print_header)
			iter->trace->print_header(m);
		else
			FUNC4(m);

	} else {
		FUNC0(iter);
		FUNC5(m, &iter->seq);
	}

	return 0;
}