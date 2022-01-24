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
struct quad_buffer_head {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sb_dmap; } ;

/* Variables and functions */
 unsigned int* FUNC0 (struct super_block*,int /*<<< orphan*/ ,struct quad_buffer_head*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 

unsigned *FUNC2(struct super_block *s, struct quad_buffer_head *qbh)
{
	return FUNC0(s, FUNC1(s)->sb_dmap, qbh, 0);
}