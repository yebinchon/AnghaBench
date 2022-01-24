#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  le_idx; int /*<<< orphan*/  le_name; } ;
typedef  TYPE_1__ labelent_t ;
typedef  int /*<<< orphan*/  ctl ;
struct TYPE_7__ {int /*<<< orphan*/  ctl_typeidx; int /*<<< orphan*/  ctl_label; } ;
typedef  TYPE_2__ ctf_lblent_t ;
struct TYPE_8__ {int /*<<< orphan*/  ctb_strtab; } ;
typedef  TYPE_3__ ctf_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ target_requires_swap ; 

__attribute__((used)) static int
FUNC3(void *arg1, void *arg2)
{
	labelent_t *le = arg1;
	ctf_buf_t *b = arg2;
	ctf_lblent_t ctl;

	ctl.ctl_label = FUNC2(&b->ctb_strtab, le->le_name);
	ctl.ctl_typeidx = le->le_idx;

	if (target_requires_swap) {
		FUNC0(ctl.ctl_label);
		FUNC0(ctl.ctl_typeidx);
	}

	FUNC1(b, &ctl, sizeof (ctl));

	return (1);
}