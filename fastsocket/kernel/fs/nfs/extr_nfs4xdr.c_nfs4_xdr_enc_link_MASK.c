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
struct rpc_rqst {int /*<<< orphan*/  rq_snd_buf; } ;
struct nfs4_link_arg {int /*<<< orphan*/  bitmask; int /*<<< orphan*/  name; int /*<<< orphan*/  dir_fh; int /*<<< orphan*/  fh; int /*<<< orphan*/  seq_args; } ;
struct compound_hdr {int /*<<< orphan*/  minorversion; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xdr_stream*,struct rpc_rqst*,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,int /*<<< orphan*/ ,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC2 (struct xdr_stream*,int /*<<< orphan*/ ,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC3 (struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC4 (struct xdr_stream*,int /*<<< orphan*/ ,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC5 (struct xdr_stream*,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC6 (struct xdr_stream*,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC7 (struct xdr_stream*,int /*<<< orphan*/ *,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct xdr_stream*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct rpc_rqst *req, __be32 *p, const struct nfs4_link_arg *args)
{
	struct xdr_stream xdr;
	struct compound_hdr hdr = {
		.minorversion = FUNC8(&args->seq_args),
	};

	FUNC9(&xdr, &req->rq_snd_buf, p);
	FUNC0(&xdr, req, &hdr);
	FUNC7(&xdr, &args->seq_args, &hdr);
	FUNC4(&xdr, args->fh, &hdr);
	FUNC6(&xdr, &hdr);
	FUNC4(&xdr, args->dir_fh, &hdr);
	FUNC2(&xdr, args->name, &hdr);
	FUNC5(&xdr, &hdr);
	FUNC1(&xdr, args->bitmask, &hdr);
	FUNC3(&hdr);
	return 0;
}