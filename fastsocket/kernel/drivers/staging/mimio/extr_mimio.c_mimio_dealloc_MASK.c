#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  dma; scalar_t__ buf; int /*<<< orphan*/  urb; } ;
struct TYPE_5__ {int /*<<< orphan*/  dma; scalar_t__ buf; int /*<<< orphan*/  urb; } ;
struct mimio {TYPE_3__* idev; TYPE_2__ out; int /*<<< orphan*/  udev; TYPE_1__ in; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; scalar_t__ grab; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIMIO_MAXPAYLOAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (struct mimio*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct mimio *mimio)
{
	if (mimio == NULL)
		return;

	FUNC7(mimio->in.urb);

	FUNC7(mimio->out.urb);

	if (mimio->idev) {
		FUNC3(mimio->idev);
		if (mimio->idev->grab)
			FUNC1(mimio->idev->grab);
		else
			FUNC0(&mimio->idev->dev, "mimio->idev->grab == NULL"
				" -- didn't call input_close_device\n");
	}

	FUNC6(mimio->in.urb);

	FUNC6(mimio->out.urb);

	if (mimio->in.buf) {
		FUNC5(mimio->udev, MIMIO_MAXPAYLOAD, mimio->in.buf,
				mimio->in.dma);
	}

	if (mimio->out.buf)
		FUNC5(mimio->udev, MIMIO_MAXPAYLOAD, mimio->out.buf,
				mimio->out.dma);

	if (mimio->idev)
		FUNC2(mimio->idev);

	FUNC4(mimio);
}