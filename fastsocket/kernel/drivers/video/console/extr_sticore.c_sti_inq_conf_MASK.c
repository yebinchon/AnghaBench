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
struct TYPE_2__ {int /*<<< orphan*/  ext_ptr; } ;
struct sti_struct {int /*<<< orphan*/  lock; int /*<<< orphan*/  glob_cfg; TYPE_1__ outptr; int /*<<< orphan*/  inq_conf; int /*<<< orphan*/  outptr_ext; } ;
struct sti_conf_inptr {int /*<<< orphan*/  member_0; } ;
typedef  int s32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sti_conf_inptr*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  default_conf_flags ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct sti_struct *sti)
{
	struct sti_conf_inptr inptr = { 0, };
	unsigned long flags;
	s32 ret;

	sti->outptr.ext_ptr = FUNC1(&sti->outptr_ext);
	
	do {
		FUNC2(&sti->lock, flags);
		ret = FUNC0(sti->inq_conf, &default_conf_flags,
			&inptr, &sti->outptr, sti->glob_cfg);
		FUNC3(&sti->lock, flags);
	} while (ret == 1);
}