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
struct TYPE_6__ {size_t page_len; int /*<<< orphan*/  page_base; } ;
struct svc_rqst {int rq_resused; TYPE_3__ rq_res; struct page** rq_respages; } ;
struct TYPE_4__ {struct svc_rqst* data; } ;
struct splice_desc {size_t len; TYPE_1__ u; } ;
struct pipe_inode_info {int dummy; } ;
struct pipe_buffer {int /*<<< orphan*/  offset; TYPE_2__* ops; struct page* page; } ;
struct page {int dummy; } ;
struct TYPE_5__ {int (* confirm ) (struct pipe_inode_info*,struct pipe_buffer*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int FUNC2 (struct pipe_inode_info*,struct pipe_buffer*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4(struct pipe_inode_info *pipe, struct pipe_buffer *buf,
		  struct splice_desc *sd)
{
	struct svc_rqst *rqstp = sd->u.data;
	struct page **pp = rqstp->rq_respages + rqstp->rq_resused;
	struct page *page = buf->page;
	size_t size;
	int ret;

	ret = buf->ops->confirm(pipe, buf);
	if (FUNC3(ret))
		return ret;

	size = sd->len;

	if (rqstp->rq_res.page_len == 0) {
		FUNC0(page);
		FUNC1(*pp);
		*pp = page;
		rqstp->rq_resused++;
		rqstp->rq_res.page_base = buf->offset;
		rqstp->rq_res.page_len = size;
	} else if (page != pp[-1]) {
		FUNC0(page);
		if (*pp)
			FUNC1(*pp);
		*pp = page;
		rqstp->rq_resused++;
		rqstp->rq_res.page_len += size;
	} else
		rqstp->rq_res.page_len += size;

	return size;
}