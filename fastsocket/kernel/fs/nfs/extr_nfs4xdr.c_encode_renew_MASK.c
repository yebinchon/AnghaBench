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
struct nfs_client {int /*<<< orphan*/  cl_clientid; } ;
struct compound_hdr {int /*<<< orphan*/  replen; int /*<<< orphan*/  nops; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  OP_RENEW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ decode_renew_maxsz ; 
 int /*<<< orphan*/ * FUNC1 (struct xdr_stream*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct xdr_stream *xdr, const struct nfs_client *client_stateid, struct compound_hdr *hdr)
{
	__be32 *p;

	p = FUNC1(xdr, 12);
	*p++ = FUNC0(OP_RENEW);
	FUNC2(p, client_stateid->cl_clientid);
	hdr->nops++;
	hdr->replen += decode_renew_maxsz;
}