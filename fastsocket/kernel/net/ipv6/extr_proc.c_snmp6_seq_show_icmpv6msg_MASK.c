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
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int ICMP6MSG_MIB_MAX ; 
 char** icmp6type2name ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,char*,unsigned long) ; 
 unsigned long FUNC1 (void**,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*,...) ; 

__attribute__((used)) static void FUNC3(struct seq_file *seq, void **mib)
{
	char name[32];
	int i;

	/* print by name -- deprecated items */
	for (i = 0; i < ICMP6MSG_MIB_MAX; i++) {
		int icmptype;
		const char *p;

		icmptype = i & 0xff;
		p = icmp6type2name[icmptype];
		if (!p)	/* don't print un-named types here */
			continue;
		FUNC2(name, sizeof(name), "Icmp6%s%s",
			i & 0x100 ? "Out" : "In", p);
		FUNC0(seq, "%-32s\t%lu\n", name,
			FUNC1(mib, i));
	}

	/* print by number (nonzero only) - ICMPMsgStat format */
	for (i = 0; i < ICMP6MSG_MIB_MAX; i++) {
		unsigned long val;

		val = FUNC1(mib, i);
		if (!val)
			continue;
		FUNC2(name, sizeof(name), "Icmp6%sType%u",
			i & 0x100 ?  "Out" : "In", i & 0xff);
		FUNC0(seq, "%-32s\t%lu\n", name, val);
	}
	return;
}