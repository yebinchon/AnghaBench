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
struct usb_hcd {scalar_t__ rsrc_len; scalar_t__ rsrc_start; int /*<<< orphan*/ * regs; } ;
struct resource {scalar_t__ start; scalar_t__ end; TYPE_1__* parent; } ;
struct device {int /*<<< orphan*/  parent; } ;
struct platform_device {int /*<<< orphan*/  name; struct device dev; } ;
struct hc_driver {int dummy; } ;
struct TYPE_2__ {scalar_t__ start; } ;

/* Variables and functions */
 int DMA_MEMORY_EXCLUSIVE ; 
 int DMA_MEMORY_MAP ; 
 int EBUSY ; 
 int ENOENT ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int IRQF_DISABLED ; 
 int IRQF_SHARED ; 
 int /*<<< orphan*/  SM501_GATE_USB_HOST ; 
 int /*<<< orphan*/  SM501_IRQ_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_hcd*) ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct hc_driver ohci_sm501_hc_driver ; 
 int FUNC7 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (struct usb_hcd*,int,int) ; 
 struct usb_hcd* FUNC14 (struct hc_driver const*,struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	const struct hc_driver *driver = &ohci_sm501_hc_driver;
	struct device *dev = &pdev->dev;
	struct resource	*res, *mem;
	int retval, irq;
	struct usb_hcd *hcd = NULL;

	irq = retval = FUNC7(pdev, 0);
	if (retval < 0)
		goto err0;

	mem = FUNC8(pdev, IORESOURCE_MEM, 1);
	if (mem == NULL) {
		FUNC0(dev, "no resource definition for memory\n");
		retval = -ENOENT;
		goto err0;
	}

	if (!FUNC10(mem->start, mem->end - mem->start + 1,
				pdev->name)) {
		FUNC0(dev, "request_mem_region failed\n");
		retval = -EBUSY;
		goto err0;
	}

	/* The sm501 chip is equipped with local memory that may be used
	 * by on-chip devices such as the video controller and the usb host.
	 * This driver uses dma_declare_coherent_memory() to make sure
	 * usb allocations with dma_alloc_coherent() allocate from
	 * this local memory. The dma_handle returned by dma_alloc_coherent()
	 * will be an offset starting from 0 for the first local memory byte.
	 *
	 * So as long as data is allocated using dma_alloc_coherent() all is
	 * fine. This is however not always the case - buffers may be allocated
	 * using kmalloc() - so the usb core needs to be told that it must copy
	 * data into our local memory if the buffers happen to be placed in
	 * regular memory. The HCD_LOCAL_MEM flag does just that.
	 */

	if (!FUNC2(dev, mem->start,
					 mem->start - mem->parent->start,
					 (mem->end - mem->start) + 1,
					 DMA_MEMORY_MAP |
					 DMA_MEMORY_EXCLUSIVE)) {
		FUNC0(dev, "cannot declare coherent memory\n");
		retval = -ENXIO;
		goto err1;
	}

	/* allocate, reserve and remap resources for registers */
	res = FUNC8(pdev, IORESOURCE_MEM, 0);
	if (res == NULL) {
		FUNC0(dev, "no resource definition for registers\n");
		retval = -ENOENT;
		goto err2;
	}

	hcd = FUNC14(driver, &pdev->dev, FUNC1(&pdev->dev));
	if (!hcd) {
		retval = -ENOMEM;
		goto err2;
	}

	hcd->rsrc_start = res->start;
	hcd->rsrc_len = res->end - res->start + 1;

	if (!FUNC10(hcd->rsrc_start, hcd->rsrc_len,	pdev->name)) {
		FUNC0(dev, "request_mem_region failed\n");
		retval = -EBUSY;
		goto err3;
	}

	hcd->regs = FUNC5(hcd->rsrc_start, hcd->rsrc_len);
	if (hcd->regs == NULL) {
		FUNC0(dev, "cannot remap registers\n");
		retval = -ENXIO;
		goto err4;
	}

	FUNC6(FUNC4(hcd));

	retval = FUNC13(hcd, irq, IRQF_DISABLED | IRQF_SHARED);
	if (retval)
		goto err4;

	/* enable power and unmask interrupts */

	FUNC12(dev->parent, SM501_GATE_USB_HOST, 1);
	FUNC11(dev->parent, SM501_IRQ_MASK, 1 << 6, 0);

	return 0;
err4:
	FUNC9(hcd->rsrc_start, hcd->rsrc_len);
err3:
	FUNC15(hcd);
err2:
	FUNC3(dev);
err1:
	FUNC9(mem->start, mem->end - mem->start + 1);
err0:
	return retval;
}