#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct superblock_smack {int /*<<< orphan*/  smk_sblock; scalar_t__ smk_initialized; int /*<<< orphan*/  smk_hat; int /*<<< orphan*/  smk_floor; int /*<<< orphan*/  smk_default; int /*<<< orphan*/  smk_root; } ;
struct super_block {struct superblock_smack* s_security; } ;
struct TYPE_4__ {int /*<<< orphan*/  smk_known; } ;
struct TYPE_3__ {int /*<<< orphan*/  smk_known; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct superblock_smack* FUNC0 (int,int /*<<< orphan*/ ) ; 
 TYPE_2__ smack_known_floor ; 
 TYPE_1__ smack_known_hat ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct super_block *sb)
{
	struct superblock_smack *sbsp;

	sbsp = FUNC0(sizeof(struct superblock_smack), GFP_KERNEL);

	if (sbsp == NULL)
		return -ENOMEM;

	sbsp->smk_root = smack_known_floor.smk_known;
	sbsp->smk_default = smack_known_floor.smk_known;
	sbsp->smk_floor = smack_known_floor.smk_known;
	sbsp->smk_hat = smack_known_hat.smk_known;
	sbsp->smk_initialized = 0;
	FUNC1(&sbsp->smk_sblock);

	sb->s_security = sbsp;

	return 0;
}