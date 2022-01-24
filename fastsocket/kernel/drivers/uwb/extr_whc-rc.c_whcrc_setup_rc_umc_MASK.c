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
struct whcrc {scalar_t__ rc_len; scalar_t__ area; int /*<<< orphan*/ * rc_base; int /*<<< orphan*/  cmd_dma_buf; int /*<<< orphan*/ * cmd_buf; int /*<<< orphan*/ * evt_buf; int /*<<< orphan*/  evt_dma_buf; struct umc_dev* umc_dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ start; scalar_t__ end; } ;
struct umc_dev {int /*<<< orphan*/  irq; struct device dev; TYPE_1__ resource; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 void* FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct whcrc*) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct whcrc*) ; 
 int /*<<< orphan*/ * FUNC8 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  whcrc_irq_cb ; 

__attribute__((used)) static
int FUNC9(struct whcrc *whcrc)
{
	int result = 0;
	struct device *dev = &whcrc->umc_dev->dev;
	struct umc_dev *umc_dev = whcrc->umc_dev;

	whcrc->area = umc_dev->resource.start;
	whcrc->rc_len = umc_dev->resource.end - umc_dev->resource.start + 1;
	result = -EBUSY;
	if (FUNC8(whcrc->area, whcrc->rc_len, KBUILD_MODNAME) == NULL) {
		FUNC0(dev, "can't request URC region (%zu bytes @ 0x%lx): %d\n",
			whcrc->rc_len, whcrc->area, result);
		goto error_request_region;
	}

	whcrc->rc_base = FUNC4(whcrc->area, whcrc->rc_len);
	if (whcrc->rc_base == NULL) {
		FUNC0(dev, "can't ioremap registers (%zu bytes @ 0x%lx): %d\n",
			whcrc->rc_len, whcrc->area, result);
		goto error_ioremap_nocache;
	}

	result = FUNC7(umc_dev->irq, whcrc_irq_cb, IRQF_SHARED,
			     KBUILD_MODNAME, whcrc);
	if (result < 0) {
		FUNC0(dev, "can't allocate IRQ %d: %d\n",
			umc_dev->irq, result);
		goto error_request_irq;
	}

	result = -ENOMEM;
	whcrc->cmd_buf = FUNC1(&umc_dev->dev, PAGE_SIZE,
					    &whcrc->cmd_dma_buf, GFP_KERNEL);
	if (whcrc->cmd_buf == NULL) {
		FUNC0(dev, "Can't allocate cmd transfer buffer\n");
		goto error_cmd_buffer;
	}

	whcrc->evt_buf = FUNC1(&umc_dev->dev, PAGE_SIZE,
					    &whcrc->evt_dma_buf, GFP_KERNEL);
	if (whcrc->evt_buf == NULL) {
		FUNC0(dev, "Can't allocate evt transfer buffer\n");
		goto error_evt_buffer;
	}
	return 0;

error_evt_buffer:
	FUNC2(&umc_dev->dev, PAGE_SIZE, whcrc->cmd_buf,
			  whcrc->cmd_dma_buf);
error_cmd_buffer:
	FUNC3(umc_dev->irq, whcrc);
error_request_irq:
	FUNC5(whcrc->rc_base);
error_ioremap_nocache:
	FUNC6(whcrc->area, whcrc->rc_len);
error_request_region:
	return result;
}