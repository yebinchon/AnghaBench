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
struct TYPE_3__ {int /*<<< orphan*/  data; } ;
struct nfsd4_sequence {int /*<<< orphan*/  maxslots; int /*<<< orphan*/  slotid; int /*<<< orphan*/  seqid; TYPE_1__ sessionid; } ;
struct TYPE_4__ {int* datap; } ;
struct nfsd4_compoundres {TYPE_2__ cstate; } ;
typedef  int __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ NFS4_MAX_SESSIONID_LEN ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__be32
FUNC4(struct nfsd4_compoundres *resp, int nfserr,
		      struct nfsd4_sequence *seq)
{
	__be32 *p;

	if (nfserr)
		return nfserr;

	FUNC1(NFS4_MAX_SESSIONID_LEN + 20);
	FUNC3(seq->sessionid.data, NFS4_MAX_SESSIONID_LEN);
	FUNC2(seq->seqid);
	FUNC2(seq->slotid);
	FUNC2(seq->maxslots);
	/*
	 * FIXME: for now:
	 *   target_maxslots = maxslots
	 *   status_flags = 0
	 */
	FUNC2(seq->maxslots);
	FUNC2(0);

	FUNC0();
	resp->cstate.datap = p; /* DRC cache data pointer */
	return 0;
}