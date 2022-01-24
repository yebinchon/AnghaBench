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
struct TYPE_6__ {scalar_t__ rdma_attrs; scalar_t__ nr_rdma_attrs; scalar_t__ maxreqs; scalar_t__ maxops; scalar_t__ maxresp_cached; scalar_t__ maxresp_sz; scalar_t__ maxreq_sz; } ;
struct TYPE_5__ {scalar_t__ rdma_attrs; scalar_t__ nr_rdma_attrs; scalar_t__ maxreqs; scalar_t__ maxops; scalar_t__ maxresp_cached; scalar_t__ maxresp_sz; scalar_t__ maxreq_sz; } ;
struct TYPE_4__ {int /*<<< orphan*/  data; } ;
struct nfsd4_create_session {TYPE_3__ back_channel; TYPE_2__ fore_channel; scalar_t__ flags; scalar_t__ seqid; TYPE_1__ sessionid; } ;
struct nfsd4_compoundres {int dummy; } ;
typedef  int __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  NFS4_MAX_SESSIONID_LEN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __be32
FUNC4(struct nfsd4_compoundres *resp, int nfserr,
			    struct nfsd4_create_session *sess)
{
	__be32 *p;

	if (nfserr)
		return nfserr;

	FUNC1(24);
	FUNC3(sess->sessionid.data, NFS4_MAX_SESSIONID_LEN);
	FUNC2(sess->seqid);
	FUNC2(sess->flags);
	FUNC0();

	FUNC1(28);
	FUNC2(0); /* headerpadsz */
	FUNC2(sess->fore_channel.maxreq_sz);
	FUNC2(sess->fore_channel.maxresp_sz);
	FUNC2(sess->fore_channel.maxresp_cached);
	FUNC2(sess->fore_channel.maxops);
	FUNC2(sess->fore_channel.maxreqs);
	FUNC2(sess->fore_channel.nr_rdma_attrs);
	FUNC0();

	if (sess->fore_channel.nr_rdma_attrs) {
		FUNC1(4);
		FUNC2(sess->fore_channel.rdma_attrs);
		FUNC0();
	}

	FUNC1(28);
	FUNC2(0); /* headerpadsz */
	FUNC2(sess->back_channel.maxreq_sz);
	FUNC2(sess->back_channel.maxresp_sz);
	FUNC2(sess->back_channel.maxresp_cached);
	FUNC2(sess->back_channel.maxops);
	FUNC2(sess->back_channel.maxreqs);
	FUNC2(sess->back_channel.nr_rdma_attrs);
	FUNC0();

	if (sess->back_channel.nr_rdma_attrs) {
		FUNC1(4);
		FUNC2(sess->back_channel.rdma_attrs);
		FUNC0();
	}
	return 0;
}