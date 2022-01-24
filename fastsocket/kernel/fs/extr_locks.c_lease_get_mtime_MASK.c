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
struct timespec {int dummy; } ;
struct inode {struct timespec i_mtime; int /*<<< orphan*/  i_sb; struct file_lock* i_flock; } ;
struct file_lock {int fl_type; } ;

/* Variables and functions */
 int F_WRLCK ; 
 scalar_t__ FUNC0 (struct file_lock*) ; 
 struct timespec FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct inode *inode, struct timespec *time)
{
	struct file_lock *flock = inode->i_flock;
	if (flock && FUNC0(flock) && (flock->fl_type & F_WRLCK))
		*time = FUNC1(inode->i_sb);
	else
		*time = inode->i_mtime;
}