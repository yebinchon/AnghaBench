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
struct nfs4_server_caps_arg {int /*<<< orphan*/  fhandle; int /*<<< orphan*/  seq_args; } ;
struct compound_hdr {int /*<<< orphan*/  minorversion; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int FATTR4_WORD0_ACLSUPPORT ; 
 int FATTR4_WORD0_LINK_SUPPORT ; 
 int FATTR4_WORD0_SUPPORTED_ATTRS ; 
 int FATTR4_WORD0_SYMLINK_SUPPORT ; 
 int /*<<< orphan*/  FUNC0 (struct xdr_stream*,struct rpc_rqst*,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,int,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC2 (struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC3 (struct xdr_stream*,int /*<<< orphan*/ ,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC4 (struct xdr_stream*,int /*<<< orphan*/ *,struct compound_hdr*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct xdr_stream*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct rpc_rqst *req, __be32 *p,
				    struct nfs4_server_caps_arg *args)
{
	struct xdr_stream xdr;
	struct compound_hdr hdr = {
		.minorversion = FUNC5(&args->seq_args),
	};

	FUNC6(&xdr, &req->rq_snd_buf, p);
	FUNC0(&xdr, req, &hdr);
	FUNC4(&xdr, &args->seq_args, &hdr);
	FUNC3(&xdr, args->fhandle, &hdr);
	FUNC1(&xdr, FATTR4_WORD0_SUPPORTED_ATTRS|
			   FATTR4_WORD0_LINK_SUPPORT|
			   FATTR4_WORD0_SYMLINK_SUPPORT|
			   FATTR4_WORD0_ACLSUPPORT, &hdr);
	FUNC2(&hdr);
	return 0;
}