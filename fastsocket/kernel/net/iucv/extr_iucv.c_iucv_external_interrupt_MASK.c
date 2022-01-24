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
typedef  int /*<<< orphan*/  u16 ;
struct iucv_irq_list {int /*<<< orphan*/  list; int /*<<< orphan*/  data; } ;
struct iucv_irq_data {scalar_t__ ippathid; int iptype; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  iucv_error_no_listener ; 
 struct iucv_irq_data** iucv_irq_data ; 
 scalar_t__ iucv_max_pathid ; 
 int /*<<< orphan*/  iucv_queue_lock ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iucv_task_queue ; 
 int /*<<< orphan*/  iucv_tasklet ; 
 int /*<<< orphan*/  iucv_work ; 
 int /*<<< orphan*/  iucv_work_queue ; 
 struct iucv_irq_list* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct iucv_irq_data*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 size_t FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(u16 code)
{
	struct iucv_irq_data *p;
	struct iucv_irq_list *work;

	p = iucv_irq_data[FUNC8()];
	if (p->ippathid >= iucv_max_pathid) {
		FUNC1(p->ippathid >= iucv_max_pathid);
		FUNC2(p->ippathid, iucv_error_no_listener);
		return;
	}
	FUNC0(p->iptype  < 0x01 || p->iptype > 0x09);
	work = FUNC3(sizeof(struct iucv_irq_list), GFP_ATOMIC);
	if (!work) {
		FUNC6("iucv_external_interrupt: out of memory\n");
		return;
	}
	FUNC5(&work->data, p, sizeof(work->data));
	FUNC9(&iucv_queue_lock);
	if (p->iptype == 0x01) {
		/* Path pending interrupt. */
		FUNC4(&work->list, &iucv_work_queue);
		FUNC7(&iucv_work);
	} else {
		/* The other interrupts. */
		FUNC4(&work->list, &iucv_task_queue);
		FUNC11(&iucv_tasklet);
	}
	FUNC10(&iucv_queue_lock);
}