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
struct jffs2_sb_info {int dummy; } ;
struct TYPE_2__ {int s_dirt; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct jffs2_sb_info*) ; 

__attribute__((used)) static inline void FUNC1(struct jffs2_sb_info *c)
{
	FUNC0(c)->s_dirt = 1;
}