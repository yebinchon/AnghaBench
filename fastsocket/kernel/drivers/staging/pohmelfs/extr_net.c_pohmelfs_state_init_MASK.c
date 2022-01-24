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
struct pohmelfs_sb {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct pohmelfs_sb*) ; 
 int /*<<< orphan*/  FUNC1 (struct pohmelfs_sb*) ; 

int FUNC2(struct pohmelfs_sb *psb)
{
	int err = -ENOMEM;

	err = FUNC0(psb);
	if (err) {
		FUNC1(psb);
		return err;
	}

	return 0;
}