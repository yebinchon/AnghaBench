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
struct ext4_extent {int /*<<< orphan*/  ee_start_hi; int /*<<< orphan*/  ee_start_lo; } ;
typedef  int ext4_fsblk_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 

__attribute__((used)) static inline void FUNC2(struct ext4_extent *ex,
					 ext4_fsblk_t pb)
{
	ex->ee_start_lo = FUNC1((unsigned long) (pb & 0xffffffff));
	ex->ee_start_hi = FUNC0((unsigned long) ((pb >> 31) >> 1) &
				      0xffff);
}