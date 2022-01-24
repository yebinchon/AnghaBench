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
struct TYPE_4__ {TYPE_1__* info; } ;
struct TYPE_3__ {int /*<<< orphan*/  dqi_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DQF_INFO_DIRTY_B ; 
 TYPE_2__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC2(struct super_block *sb, int type)
{
	FUNC1(DQF_INFO_DIRTY_B, &FUNC0(sb)->info[type].dqi_flags);
}