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
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int FUSE_MAX_PAGES_PER_REQ ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline loff_t FUNC1(loff_t off)
{
	return FUNC0(off, FUSE_MAX_PAGES_PER_REQ << PAGE_SHIFT);
}