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
struct pohmelfs_sb {int /*<<< orphan*/  hash_string; int /*<<< orphan*/  cipher_string; } ;

/* Variables and functions */
 int FUNC0 (struct pohmelfs_sb*) ; 
 int FUNC1 (struct pohmelfs_sb*) ; 

int FUNC2(struct pohmelfs_sb *psb)
{
	int err;

	if (!psb->cipher_string && !psb->hash_string)
		return 0;

	err = FUNC0(psb);
	if (err)
		return err;

	err = FUNC1(psb);
	if (err)
		return err;

	return 0;
}