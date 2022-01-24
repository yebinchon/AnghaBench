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
typedef  int uint32_t ;
struct xdr_stream {int dummy; } ;
struct rpc_rqst {int /*<<< orphan*/  rq_rcv_buf; int /*<<< orphan*/  rq_snd_buf; } ;
struct nfs_getaclargs {int /*<<< orphan*/  acl_len; int /*<<< orphan*/  acl_pgbase; int /*<<< orphan*/  acl_pages; int /*<<< orphan*/  fh; int /*<<< orphan*/  seq_args; } ;
struct compound_hdr {int replen; int /*<<< orphan*/  minorversion; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FATTR4_WORD0_ACL ; 
 int /*<<< orphan*/  FUNC0 (struct xdr_stream*,struct rpc_rqst*,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC2 (struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC3 (struct xdr_stream*,int /*<<< orphan*/ ,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC4 (struct xdr_stream*,int /*<<< orphan*/ *,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int op_decode_hdr_maxsz ; 
 int /*<<< orphan*/  FUNC6 (struct xdr_stream*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct rpc_rqst *req, __be32 *p,
		struct nfs_getaclargs *args)
{
	struct xdr_stream xdr;
	struct compound_hdr hdr = {
		.minorversion = FUNC5(&args->seq_args),
	};
	uint32_t replen;

	FUNC6(&xdr, &req->rq_snd_buf, p);
	FUNC0(&xdr, req, &hdr);
	FUNC4(&xdr, &args->seq_args, &hdr);
	FUNC3(&xdr, args->fh, &hdr);
	replen = hdr.replen + op_decode_hdr_maxsz + 1;
	FUNC1(&xdr, FATTR4_WORD0_ACL, 0, &hdr);

	FUNC7(&req->rq_rcv_buf, replen << 2,
		args->acl_pages, args->acl_pgbase, args->acl_len);

	FUNC2(&hdr);
	return 0;
}