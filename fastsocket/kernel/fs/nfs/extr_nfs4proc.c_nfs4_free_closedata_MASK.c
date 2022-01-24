#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct nfs4_state_owner {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  seqid; } ;
struct nfs4_closedata {TYPE_1__ arg; TYPE_3__* state; scalar_t__ roc; } ;
struct TYPE_6__ {TYPE_2__* inode; struct nfs4_state_owner* owner; } ;
struct TYPE_5__ {struct super_block* i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfs4_closedata*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs4_state_owner*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC6(void *data)
{
	struct nfs4_closedata *calldata = data;
	struct nfs4_state_owner *sp = calldata->state->owner;
	struct super_block *sb = calldata->state->inode->i_sb;

	if (calldata->roc)
		FUNC5(calldata->state->inode);
	FUNC1(calldata->state);
	FUNC3(calldata->arg.seqid);
	FUNC2(sp);
	FUNC4(sb);
	FUNC0(calldata);
}