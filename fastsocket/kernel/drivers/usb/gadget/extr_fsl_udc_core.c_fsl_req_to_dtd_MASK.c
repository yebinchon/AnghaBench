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
struct fsl_req {struct ep_td_struct* tail; int /*<<< orphan*/  dtd_count; struct ep_td_struct* head; } ;
struct ep_td_struct {void* next_td_ptr; struct ep_td_struct* next_td_virt; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DTD_NEXT_TERMINATE ; 
 int ENOMEM ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 struct ep_td_struct* FUNC1 (struct fsl_req*,unsigned int*,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static int FUNC2(struct fsl_req *req)
{
	unsigned	count;
	int		is_last;
	int		is_first =1;
	struct ep_td_struct	*last_dtd = NULL, *dtd;
	dma_addr_t dma;

	do {
		dtd = FUNC1(req, &count, &dma, &is_last);
		if (dtd == NULL)
			return -ENOMEM;

		if (is_first) {
			is_first = 0;
			req->head = dtd;
		} else {
			last_dtd->next_td_ptr = FUNC0(dma);
			last_dtd->next_td_virt = dtd;
		}
		last_dtd = dtd;

		req->dtd_count++;
	} while (!is_last);

	dtd->next_td_ptr = FUNC0(DTD_NEXT_TERMINATE);

	req->tail = dtd;

	return 0;
}