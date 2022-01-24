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
struct nfs4_change_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OP_RENAME ; 
 int FUNC0 (struct xdr_stream*,struct nfs4_change_info*) ; 
 int FUNC1 (struct xdr_stream*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct xdr_stream *xdr, struct nfs4_change_info *old_cinfo,
	      struct nfs4_change_info *new_cinfo)
{
	int status;

	status = FUNC1(xdr, OP_RENAME);
	if (status)
		goto out;
	if ((status = FUNC0(xdr, old_cinfo)))
		goto out;
	status = FUNC0(xdr, new_cinfo);
out:
	return status;
}