#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct svc_rqst {int /*<<< orphan*/  rq_vec; } ;
struct TYPE_5__ {TYPE_1__* fh_dentry; } ;
struct nfsd3_readres {scalar_t__ count; int eof; TYPE_2__ fh; } ;
struct nfsd3_readargs {scalar_t__ count; scalar_t__ offset; int /*<<< orphan*/  vlen; int /*<<< orphan*/  fh; } ;
struct inode {scalar_t__ i_size; } ;
typedef  scalar_t__ __be32 ;
struct TYPE_4__ {struct inode* d_inode; } ;

/* Variables and functions */
 int NFS3_POST_OP_ATTR_WORDS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct svc_rqst*,TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC5 (struct svc_rqst*) ; 
 int /*<<< orphan*/  FUNC6 (struct svc_rqst*,scalar_t__) ; 

__attribute__((used)) static __be32
FUNC7(struct svc_rqst *rqstp, struct nfsd3_readargs *argp,
				        struct nfsd3_readres  *resp)
{
	__be32	nfserr;
	u32	max_blocksize = FUNC5(rqstp);

	FUNC2("nfsd: READ(3) %s %lu bytes at %lu\n",
				FUNC1(&argp->fh),
				(unsigned long) argp->count,
				(unsigned long) argp->offset);

	/* Obtain buffer pointer for payload.
	 * 1 (status) + 22 (post_op_attr) + 1 (count) + 1 (eof)
	 * + 1 (xdr opaque byte count) = 26
	 */

	resp->count = argp->count;
	if (max_blocksize < resp->count)
		resp->count = max_blocksize;

	FUNC6(rqstp, ((1 + NFS3_POST_OP_ATTR_WORDS + 3)<<2) + resp->count +4);

	FUNC3(&resp->fh, &argp->fh);
	nfserr = FUNC4(rqstp, &resp->fh,
				  argp->offset,
			   	  rqstp->rq_vec, argp->vlen,
				  &resp->count);
	if (nfserr == 0) {
		struct inode	*inode = resp->fh.fh_dentry->d_inode;

		resp->eof = (argp->offset + resp->count) >= inode->i_size;
	}

	FUNC0(nfserr);
}