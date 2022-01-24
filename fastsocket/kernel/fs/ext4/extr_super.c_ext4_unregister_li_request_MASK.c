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
struct super_block {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  s_li_request; } ;
struct TYPE_3__ {int /*<<< orphan*/  li_list_mtx; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct super_block*) ; 
 TYPE_1__* ext4_li_info ; 
 int /*<<< orphan*/  ext4_li_mtx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct super_block *sb)
{
	FUNC2(&ext4_li_mtx);
	if (!ext4_li_info) {
		FUNC3(&ext4_li_mtx);
		return;
	}

	FUNC2(&ext4_li_info->li_list_mtx);
	FUNC1(FUNC0(sb)->s_li_request);
	FUNC3(&ext4_li_info->li_list_mtx);
	FUNC3(&ext4_li_mtx);
}