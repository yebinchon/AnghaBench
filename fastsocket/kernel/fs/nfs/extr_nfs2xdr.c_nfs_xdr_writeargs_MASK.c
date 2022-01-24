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
typedef  int /*<<< orphan*/  u32 ;
struct xdr_buf {int /*<<< orphan*/  flags; int /*<<< orphan*/  head; int /*<<< orphan*/  len; } ;
struct rpc_rqst {struct xdr_buf rq_snd_buf; } ;
struct nfs_writeargs {int /*<<< orphan*/  pgbase; int /*<<< orphan*/  pages; int /*<<< orphan*/  fh; int /*<<< orphan*/  count; int /*<<< orphan*/  offset; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  XDRBUF_WRITE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xdr_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct rpc_rqst *req, __be32 *p, struct nfs_writeargs *args)
{
	struct xdr_buf *sndbuf = &req->rq_snd_buf;
	u32 offset = (u32)args->offset;
	u32 count = args->count;

	p = FUNC2(p, args->fh);
	*p++ = FUNC0(offset);
	*p++ = FUNC0(offset);
	*p++ = FUNC0(count);
	*p++ = FUNC0(count);
	sndbuf->len = FUNC1(sndbuf->head, p);

	/* Copy the page array */
	FUNC3(sndbuf, args->pages, args->pgbase, count);
	sndbuf->flags |= XDRBUF_WRITE;
	return 0;
}