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
struct seq_file {int dummy; } ;
struct rpc_procinfo {unsigned int p_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,...) ; 

__attribute__((used)) static void FUNC1(struct seq_file *seq, unsigned int op,
			struct rpc_procinfo *procs)
{
	if (procs[op].p_name)
		FUNC0(seq, "\t%12s: ", procs[op].p_name);
	else if (op == 0)
		FUNC0(seq, "\t        NULL: ");
	else
		FUNC0(seq, "\t%12u: ", op);
}