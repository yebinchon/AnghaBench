#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct super_block {int dummy; } ;

/* Variables and functions */
 int OCFS2_SUBALLOC_ALLOC ; 
 scalar_t__ FUNC0 (struct super_block*,int) ; 
 scalar_t__ FUNC1 (struct super_block*) ; 

__attribute__((used)) static inline int FUNC2(struct super_block *sb)
{
	int credits = 1 + OCFS2_SUBALLOC_ALLOC;

	credits += FUNC0(sb, 1);
	credits += FUNC1(sb);

	return credits;
}