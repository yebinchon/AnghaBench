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
struct super_block {scalar_t__ s_dirt; } ;
struct ext2_super_block {int /*<<< orphan*/  s_wtime; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_sbh; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5 (struct super_block * sb,
			       struct ext2_super_block * es)
{
	FUNC2(sb);
	es->s_wtime = FUNC1(FUNC3());
	FUNC4(FUNC0(sb)->s_sbh);
	sb->s_dirt = 0;
}