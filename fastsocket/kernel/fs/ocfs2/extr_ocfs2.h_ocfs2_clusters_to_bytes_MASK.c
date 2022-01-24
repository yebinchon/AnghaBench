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
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct TYPE_2__ {int s_clustersize_bits; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct super_block*) ; 

__attribute__((used)) static inline u64 FUNC1(struct super_block *sb,
					  u32 clusters)
{
	return (u64)clusters << FUNC0(sb)->s_clustersize_bits;
}