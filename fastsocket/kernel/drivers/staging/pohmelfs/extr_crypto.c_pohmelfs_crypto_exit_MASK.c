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
struct pohmelfs_sb {int /*<<< orphan*/  cipher_string; int /*<<< orphan*/  hash_string; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pohmelfs_sb*) ; 

void FUNC2(struct pohmelfs_sb *psb)
{
	FUNC1(psb);

	FUNC0(psb->hash_string);
	FUNC0(psb->cipher_string);
}