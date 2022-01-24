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
struct nilfs_sustat {unsigned long ss_ncleansegs; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct inode*,struct nilfs_sustat*) ; 

int FUNC1(struct inode *sufile, unsigned long *nsegsp)
{
	struct nilfs_sustat sustat;
	int ret;

	ret = FUNC0(sufile, &sustat);
	if (ret == 0)
		*nsegsp = sustat.ss_ncleansegs;
	return ret;
}