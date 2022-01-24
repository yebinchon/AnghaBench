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
struct nfs_open_confirmres {int /*<<< orphan*/  stateid; int /*<<< orphan*/  seqid; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  OP_OPEN_CONFIRM ; 
 int FUNC0 (struct xdr_stream*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct xdr_stream *xdr, struct nfs_open_confirmres *res)
{
	int status;

	status = FUNC0(xdr, OP_OPEN_CONFIRM);
	if (status != -EIO)
		FUNC2(status, res->seqid);
	if (!status)
		status = FUNC1(xdr, &res->stateid);
	return status;
}