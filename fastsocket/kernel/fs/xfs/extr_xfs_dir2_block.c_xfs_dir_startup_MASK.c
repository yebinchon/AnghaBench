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

/* Variables and functions */
 void* FUNC0 (unsigned char*,int) ; 
 void* xfs_dir_hash_dot ; 
 void* xfs_dir_hash_dotdot ; 

void
FUNC1(void)
{
	xfs_dir_hash_dot = FUNC0((unsigned char *)".", 1);
	xfs_dir_hash_dotdot = FUNC0((unsigned char *)"..", 2);
}