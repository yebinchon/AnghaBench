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
struct urb {int status; int /*<<< orphan*/  actual_length; struct acm_ru* context; } ;
struct acm_ru {int /*<<< orphan*/  list; struct acm_rb* buffer; struct acm* instance; } ;
struct acm_rb {int /*<<< orphan*/  list; int /*<<< orphan*/  size; } ;
struct acm {int /*<<< orphan*/  urb_task; int /*<<< orphan*/  susp_count; int /*<<< orphan*/  read_lock; int /*<<< orphan*/  spare_read_bufs; int /*<<< orphan*/  spare_read_urbs; int /*<<< orphan*/  filled_read_bufs; int /*<<< orphan*/  processing; TYPE_1__* data; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct acm*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct urb *urb)
{
	struct acm_rb *buf;
	struct acm_ru *rcv = urb->context;
	struct acm *acm = rcv->instance;
	int status = urb->status;

	FUNC1("Entering acm_read_bulk with status %d", status);

	if (!FUNC0(acm)) {
		FUNC2(&acm->data->dev, "Aborting, acm not ready");
		return;
	}
	FUNC9(acm->dev);

	if (status)
		FUNC2(&acm->data->dev, "bulk rx status %d\n", status);

	buf = rcv->buffer;
	buf->size = urb->actual_length;

	if (FUNC3(status == 0)) {
		FUNC6(&acm->read_lock);
		acm->processing++;
		FUNC5(&rcv->list, &acm->spare_read_urbs);
		FUNC5(&buf->list, &acm->filled_read_bufs);
		FUNC7(&acm->read_lock);
	} else {
		/* we drop the buffer due to an error */
		FUNC6(&acm->read_lock);
		FUNC5(&rcv->list, &acm->spare_read_urbs);
		FUNC4(&buf->list, &acm->spare_read_bufs);
		FUNC7(&acm->read_lock);
		/* nevertheless the tasklet must be kicked unconditionally
		so the queue cannot dry up */
	}
	if (FUNC3(!acm->susp_count))
		FUNC8(&acm->urb_task);
}