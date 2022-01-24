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
typedef  int u32 ;
struct nfsd4_open {int op_rflags; int* op_bmval; int op_delegate_type; int op_recall; int /*<<< orphan*/  op_stateowner; int /*<<< orphan*/  op_delegate_stateid; int /*<<< orphan*/  op_cinfo; int /*<<< orphan*/  op_stateid; } ;
struct nfsd4_compoundres {int dummy; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  ENCODE_SEQID_OP_HEAD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE ; 
 int NFS4_LIMIT_SIZE ; 
#define  NFS4_OPEN_DELEGATE_NONE 130 
#define  NFS4_OPEN_DELEGATE_READ 129 
#define  NFS4_OPEN_DELEGATE_WRITE 128 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct nfsd4_compoundres*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static __be32
FUNC7(struct nfsd4_compoundres *resp, __be32 nfserr, struct nfsd4_open *open)
{
	__be32 *p;
	ENCODE_SEQID_OP_HEAD;

	if (nfserr)
		goto out;

	FUNC5(resp, &open->op_stateid);
	FUNC3(40);
	FUNC6(&p, &open->op_cinfo);
	FUNC4(open->op_rflags);
	FUNC4(2);
	FUNC4(open->op_bmval[0]);
	FUNC4(open->op_bmval[1]);
	FUNC4(open->op_delegate_type);
	FUNC0();

	switch (open->op_delegate_type) {
	case NFS4_OPEN_DELEGATE_NONE:
		break;
	case NFS4_OPEN_DELEGATE_READ:
		FUNC5(resp, &open->op_delegate_stateid);
		FUNC3(20);
		FUNC4(open->op_recall);

		/*
		 * TODO: ACE's in delegations
		 */
		FUNC4(NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE);
		FUNC4(0);
		FUNC4(0);
		FUNC4(0);   /* XXX: is NULL principal ok? */
		FUNC0();
		break;
	case NFS4_OPEN_DELEGATE_WRITE:
		FUNC5(resp, &open->op_delegate_stateid);
		FUNC3(32);
		FUNC4(0);

		/*
		 * TODO: space_limit's in delegations
		 */
		FUNC4(NFS4_LIMIT_SIZE);
		FUNC4(~(u32)0);
		FUNC4(~(u32)0);

		/*
		 * TODO: ACE's in delegations
		 */
		FUNC4(NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE);
		FUNC4(0);
		FUNC4(0);
		FUNC4(0);   /* XXX: is NULL principal ok? */
		FUNC0();
		break;
	default:
		FUNC1();
	}
	/* XXX save filehandle here */
out:
	FUNC2(open->op_stateowner);
	return nfserr;
}