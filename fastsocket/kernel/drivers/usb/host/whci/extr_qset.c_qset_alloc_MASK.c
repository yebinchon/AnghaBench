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
struct whc_qset {int /*<<< orphan*/  stds; int /*<<< orphan*/  list_node; struct whc* whc; int /*<<< orphan*/  qset_dma; } ;
struct whc {int /*<<< orphan*/  qset_pool; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct whc_qset* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct whc_qset*,int /*<<< orphan*/ ,int) ; 

struct whc_qset *FUNC3(struct whc *whc, gfp_t mem_flags)
{
	struct whc_qset *qset;
	dma_addr_t dma;

	qset = FUNC1(whc->qset_pool, mem_flags, &dma);
	if (qset == NULL)
		return NULL;
	FUNC2(qset, 0, sizeof(struct whc_qset));

	qset->qset_dma = dma;
	qset->whc = whc;

	FUNC0(&qset->list_node);
	FUNC0(&qset->stds);

	return qset;
}