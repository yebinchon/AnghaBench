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

/* Variables and functions */
 void* SEQ_START_TOKEN ; 
 int /*<<< orphan*/  WIRELESS_EXT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,void*) ; 

__attribute__((used)) static int FUNC3(struct seq_file *seq, void *v)
{
	FUNC0();

	if (v == SEQ_START_TOKEN)
		FUNC1(seq, "Inter-| sta-|   Quality        |   Discarded "
				"packets               | Missed | WE\n"
				" face | tus | link level noise |  nwid  "
				"crypt   frag  retry   misc | beacon | %d\n",
			   WIRELESS_EXT);
	else
		FUNC2(seq, v);
	return 0;
}