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
struct inode {int dummy; } ;
struct TYPE_2__ {scalar_t__ i_alloc_type; } ;

/* Variables and functions */
 scalar_t__ ICBTAG_FLAG_AD_IN_ICB ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 size_t FUNC1 (struct inode*) ; 

__attribute__((used)) static inline size_t FUNC2(struct inode *inode)
{
	if (FUNC0(inode)->i_alloc_type == ICBTAG_FLAG_AD_IN_ICB)
		return FUNC1(inode);
	else
		return 0;
}