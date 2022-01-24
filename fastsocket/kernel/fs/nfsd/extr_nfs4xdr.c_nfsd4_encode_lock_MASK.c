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
struct nfsd4_lock {int /*<<< orphan*/  lk_replay_owner; int /*<<< orphan*/  lk_denied; int /*<<< orphan*/  lk_resp_stateid; } ;
struct nfsd4_compoundres {int dummy; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  ENCODE_SEQID_OP_HEAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfsd4_compoundres*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nfsd4_compoundres*,int /*<<< orphan*/ *) ; 
 scalar_t__ nfserr_denied ; 

__attribute__((used)) static __be32
FUNC3(struct nfsd4_compoundres *resp, __be32 nfserr, struct nfsd4_lock *lock)
{
	ENCODE_SEQID_OP_HEAD;

	if (!nfserr)
		FUNC2(resp, &lock->lk_resp_stateid);
	else if (nfserr == nfserr_denied)
		FUNC1(resp, &lock->lk_denied);

	FUNC0(lock->lk_replay_owner);
	return nfserr;
}