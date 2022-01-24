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
struct svc_rqst {struct page** rq_pages; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int PAGE_SIZE ; 
 unsigned int RPCSVC_MAXPAGES ; 
 struct page* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct svc_rqst*) ; 

__attribute__((used)) static int
FUNC3(struct svc_rqst *rqstp, unsigned int size)
{
	unsigned int pages, arghi;

	/* bc_xprt uses fore channel allocated buffers */
	if (FUNC2(rqstp))
		return 1;

	pages = size / PAGE_SIZE + 1; /* extra page as we hold both request and reply.
				       * We assume one is at most one page
				       */
	arghi = 0;
	FUNC0(pages > RPCSVC_MAXPAGES);
	while (pages) {
		struct page *p = FUNC1(GFP_KERNEL);
		if (!p)
			break;
		rqstp->rq_pages[arghi++] = p;
		pages--;
	}
	return pages == 0;
}