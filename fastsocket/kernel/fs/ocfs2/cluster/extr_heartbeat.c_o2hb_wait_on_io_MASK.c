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
struct o2hb_region {TYPE_2__* hr_bdev; } ;
struct o2hb_bio_wait_ctxt {int /*<<< orphan*/  wc_io_complete; } ;
struct address_space {int dummy; } ;
struct TYPE_4__ {TYPE_1__* bd_inode; } ;
struct TYPE_3__ {struct address_space* i_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC1 (struct o2hb_bio_wait_ctxt*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct o2hb_region *reg,
			    struct o2hb_bio_wait_ctxt *wc)
{
	struct address_space *mapping = reg->hr_bdev->bd_inode->i_mapping;

	FUNC0(mapping);
	FUNC1(wc, 1);

	FUNC2(&wc->wc_io_complete);
}