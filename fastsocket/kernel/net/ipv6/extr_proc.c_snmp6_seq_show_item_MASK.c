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
struct snmp_mib {int /*<<< orphan*/  entry; scalar_t__ name; } ;
struct seq_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC2(struct seq_file *seq, void **mib, struct snmp_mib *itemlist)
{
	int i;
	for (i=0; itemlist[i].name; i++)
		FUNC0(seq, "%-32s\t%lu\n", itemlist[i].name,
			   FUNC1(mib, itemlist[i].entry));
}