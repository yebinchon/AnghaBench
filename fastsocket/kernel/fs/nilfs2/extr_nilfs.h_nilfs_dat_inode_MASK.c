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
struct the_nilfs {struct inode* ns_dat; struct inode* ns_gc_dat; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 

__attribute__((used)) static inline struct inode *FUNC1(const struct the_nilfs *nilfs)
{
	return FUNC0() ? nilfs->ns_gc_dat : nilfs->ns_dat;
}