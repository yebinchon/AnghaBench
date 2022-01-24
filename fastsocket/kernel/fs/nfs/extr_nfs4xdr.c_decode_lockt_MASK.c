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
struct nfs_lockt_res {int /*<<< orphan*/  denied; } ;

/* Variables and functions */
 int NFS4ERR_DENIED ; 
 int /*<<< orphan*/  OP_LOCKT ; 
 int FUNC0 (struct xdr_stream*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct xdr_stream*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct xdr_stream *xdr, struct nfs_lockt_res *res)
{
	int status;
	status = FUNC1(xdr, OP_LOCKT);
	if (status == -NFS4ERR_DENIED)
		return FUNC0(xdr, res->denied);
	return status;
}