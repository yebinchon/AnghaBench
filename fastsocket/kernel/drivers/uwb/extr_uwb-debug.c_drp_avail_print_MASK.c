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
struct TYPE_2__ {int /*<<< orphan*/  pending; int /*<<< orphan*/  local; int /*<<< orphan*/  global; } ;
struct uwb_rc {TYPE_1__ drp_avail; } ;
struct seq_file {struct uwb_rc* private; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  UWB_NUM_MAS ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,char*) ; 

__attribute__((used)) static int FUNC2(struct seq_file *s, void *p)
{
	struct uwb_rc *rc = s->private;
	char buf[72];

	FUNC0(buf, sizeof(buf), rc->drp_avail.global, UWB_NUM_MAS);
	FUNC1(s, "global:  %s\n", buf);
	FUNC0(buf, sizeof(buf), rc->drp_avail.local, UWB_NUM_MAS);
	FUNC1(s, "local:   %s\n", buf);
	FUNC0(buf, sizeof(buf), rc->drp_avail.pending, UWB_NUM_MAS);
	FUNC1(s, "pending: %s\n", buf);

	return 0;
}