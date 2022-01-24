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
struct seq_file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  entry; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 TYPE_1__* sctp_snmp_list ; 
 scalar_t__ sctp_statistics ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct seq_file *seq, void *v)
{
	int i;

	for (i = 0; sctp_snmp_list[i].name != NULL; i++)
		FUNC0(seq, "%-32s\t%ld\n", sctp_snmp_list[i].name,
			   FUNC1((void **)sctp_statistics,
				      sctp_snmp_list[i].entry));

	return 0;
}