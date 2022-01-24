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
struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_nilfs; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct super_block*) ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ) ; 

struct inode *FUNC2(struct super_block *sb)
{
	return FUNC1(FUNC0(sb)->s_nilfs);
}