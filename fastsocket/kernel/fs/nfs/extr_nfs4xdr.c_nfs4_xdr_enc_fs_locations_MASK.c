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
struct nfs4_fs_locations_arg {int /*<<< orphan*/  page; int /*<<< orphan*/  bitmask; int /*<<< orphan*/  name; int /*<<< orphan*/  dir_fh; int /*<<< orphan*/  seq_args; } ;
struct compound_hdr {int replen; int /*<<< orphan*/  minorversion; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct xdr_stream*,struct rpc_rqst*,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,int /*<<< orphan*/ ,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC2 (struct xdr_stream*,int /*<<< orphan*/ ,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC3 (struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC4 (struct xdr_stream*,int /*<<< orphan*/ ,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC5 (struct xdr_stream*,int /*<<< orphan*/ *,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct xdr_stream*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct rpc_rqst *req, __be32 *p, struct nfs4_fs_locations_arg *args)
{
	struct xdr_stream xdr;
	struct compound_hdr hdr = {
		.minorversion = FUNC6(&args->seq_args),
	};
	uint32_t replen;

	FUNC7(&xdr, &req->rq_snd_buf, p);
	FUNC0(&xdr, req, &hdr);
	FUNC5(&xdr, &args->seq_args, &hdr);
	FUNC4(&xdr, args->dir_fh, &hdr);
	FUNC2(&xdr, args->name, &hdr);
	replen = hdr.replen;	/* get the attribute into args->page */
	FUNC1(&xdr, args->bitmask, &hdr);

	FUNC8(&req->rq_rcv_buf, replen << 2, &args->page,
			0, PAGE_SIZE);
	FUNC3(&hdr);
	return 0;
}