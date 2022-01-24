#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct whc_qset {TYPE_1__* ep; } ;
struct whc {int dummy; } ;
struct urb {TYPE_1__* ep; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {struct whc_qset* hcpriv; } ;

/* Variables and functions */
 struct whc_qset* FUNC0 (struct whc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct whc_qset*,struct urb*) ; 

struct whc_qset *FUNC2(struct whc *whc, struct urb *urb,
				 gfp_t mem_flags)
{
	struct whc_qset *qset;

	qset = urb->ep->hcpriv;
	if (qset == NULL) {
		qset = FUNC0(whc, mem_flags);
		if (qset == NULL)
			return NULL;

		qset->ep = urb->ep;
		urb->ep->hcpriv = qset;
		FUNC1(qset, urb);
	}
	return qset;
}