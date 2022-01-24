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
struct TYPE_2__ {int /*<<< orphan*/  aal5; int /*<<< orphan*/  aal0; } ;
struct atm_dev {int /*<<< orphan*/  refcnt; TYPE_1__ stats; int /*<<< orphan*/ * esi; int /*<<< orphan*/  type; int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int ESI_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*) ; 

__attribute__((used)) static void FUNC5(struct seq_file *seq, const struct atm_dev *dev)
{
	int i;

	FUNC2(seq, "%3d %-8s", dev->number, dev->type);
	for (i = 0; i < ESI_LEN; i++)
		FUNC2(seq, "%02x", dev->esi[i]);
	FUNC4(seq, "  ");
	FUNC0(seq, "0", &dev->stats.aal0);
	FUNC4(seq, "  ");
	FUNC0(seq, "5", &dev->stats.aal5);
	FUNC2(seq, "\t[%d]", FUNC1(&dev->refcnt));
	FUNC3(seq, '\n');
}