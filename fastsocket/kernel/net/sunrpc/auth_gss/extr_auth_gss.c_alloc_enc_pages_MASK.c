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
struct xdr_buf {int page_len; int page_base; } ;
struct rpc_rqst {int rq_enc_pages_num; int /*<<< orphan*/  (* rq_release_snd_buf ) (struct rpc_rqst*) ;int /*<<< orphan*/ ** rq_enc_pages; struct xdr_buf rq_snd_buf; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int PAGE_CACHE_SHIFT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_rqst*) ; 

__attribute__((used)) static int
FUNC3(struct rpc_rqst *rqstp)
{
	struct xdr_buf *snd_buf = &rqstp->rq_snd_buf;
	int first, last, i;

	if (snd_buf->page_len == 0) {
		rqstp->rq_enc_pages_num = 0;
		return 0;
	}

	first = snd_buf->page_base >> PAGE_CACHE_SHIFT;
	last = (snd_buf->page_base + snd_buf->page_len - 1) >> PAGE_CACHE_SHIFT;
	rqstp->rq_enc_pages_num = last - first + 1 + 1;
	rqstp->rq_enc_pages
		= FUNC1(rqstp->rq_enc_pages_num * sizeof(struct page *),
				GFP_NOFS);
	if (!rqstp->rq_enc_pages)
		goto out;
	for (i=0; i < rqstp->rq_enc_pages_num; i++) {
		rqstp->rq_enc_pages[i] = FUNC0(GFP_NOFS);
		if (rqstp->rq_enc_pages[i] == NULL)
			goto out_free;
	}
	rqstp->rq_release_snd_buf = priv_release_snd_buf;
	return 0;
out_free:
	rqstp->rq_enc_pages_num = i;
	FUNC2(rqstp);
out:
	return -EAGAIN;
}