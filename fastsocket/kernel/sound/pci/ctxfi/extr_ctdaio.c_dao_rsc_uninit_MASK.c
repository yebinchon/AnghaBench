#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct hw {int /*<<< orphan*/  (* dao_put_ctrl_blk ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_3__ {size_t msr; } ;
struct TYPE_4__ {TYPE_1__ rscl; } ;
struct dao {TYPE_2__ daio; int /*<<< orphan*/ * ctrl_blk; scalar_t__ hw; scalar_t__* imappers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct dao*) ; 
 int /*<<< orphan*/  FUNC2 (struct dao*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct dao *dao)
{
	if (dao->imappers) {
		if (dao->imappers[0])
			FUNC1(dao);

		if (dao->imappers[dao->daio.rscl.msr])
			FUNC2(dao);

		FUNC3(dao->imappers);
		dao->imappers = NULL;
	}
	((struct hw *)dao->hw)->dao_put_ctrl_blk(dao->ctrl_blk);
	dao->hw = dao->ctrl_blk = NULL;
	FUNC0(&dao->daio);

	return 0;
}