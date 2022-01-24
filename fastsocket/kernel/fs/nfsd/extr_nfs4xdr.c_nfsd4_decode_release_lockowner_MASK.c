#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int len; int /*<<< orphan*/  data; } ;
struct nfsd4_release_lockowner {int /*<<< orphan*/  rl_clientid; TYPE_1__ rl_owner; } ;
struct nfsd4_compoundargs {scalar_t__ minorversion; } ;
typedef  int /*<<< orphan*/  clientid_t ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  DECODE_HEAD ; 
 int /*<<< orphan*/  DECODE_TAIL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  nfserr_inval ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __be32
FUNC5(struct nfsd4_compoundargs *argp, struct nfsd4_release_lockowner *rlockowner)
{
	DECODE_HEAD;

	FUNC3(12);
	FUNC0(&rlockowner->rl_clientid, sizeof(clientid_t));
	FUNC1(rlockowner->rl_owner.len);
	FUNC3(rlockowner->rl_owner.len);
	FUNC2(rlockowner->rl_owner.data, rlockowner->rl_owner.len);

	if (argp->minorversion && !FUNC4(&rlockowner->rl_clientid))
		return nfserr_inval;
	DECODE_TAIL;
}