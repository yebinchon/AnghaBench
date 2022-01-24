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
struct xdr_stream {int dummy; } ;
struct nfs_openargs {int open_flags; int /*<<< orphan*/  claim; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  NFS4_OPEN_CLAIM_NULL ; 
 int /*<<< orphan*/  NFS4_OPEN_CREATE ; 
 int /*<<< orphan*/  NFS4_OPEN_NOCREATE ; 
 int O_CREAT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xdr_stream*,struct nfs_openargs const*) ; 
 int /*<<< orphan*/ * FUNC3 (struct xdr_stream*,int) ; 

__attribute__((used)) static void FUNC4(struct xdr_stream *xdr, const struct nfs_openargs *arg)
{
	__be32 *p;

	p = FUNC3(xdr, 4);
	switch (arg->open_flags & O_CREAT) {
	case 0:
		*p = FUNC1(NFS4_OPEN_NOCREATE);
		break;
	default:
		FUNC0(arg->claim != NFS4_OPEN_CLAIM_NULL);
		*p = FUNC1(NFS4_OPEN_CREATE);
		FUNC2(xdr, arg);
	}
}