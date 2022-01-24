#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_15__ {int length; scalar_t__ msb_right; scalar_t__ offset; } ;
struct TYPE_14__ {int offset; int length; scalar_t__ msb_right; } ;
struct TYPE_13__ {int offset; int length; scalar_t__ msb_right; } ;
struct TYPE_12__ {int xres; int yres; int bits_per_pixel; TYPE_3__ blue; TYPE_2__ green; TYPE_1__ red; int /*<<< orphan*/  vmode; int /*<<< orphan*/  activate; int /*<<< orphan*/  pixclock; } ;
struct TYPE_16__ {unsigned long smem_start; int accel; int /*<<< orphan*/  line_length; int /*<<< orphan*/  visual; int /*<<< orphan*/  type; int /*<<< orphan*/  id; int /*<<< orphan*/  smem_len; } ;
struct fb_info {int flags; int /*<<< orphan*/ * screen_base; int /*<<< orphan*/  cmap; TYPE_11__ var; TYPE_4__ fix; int /*<<< orphan*/ * fbops; struct dlfb_data* par; struct dlfb_data* pseudo_palette; } ;
struct dlfb_data {int screen_size; TYPE_5__* udev; struct fb_info* info; int /*<<< orphan*/  line_length; void* backing_buffer; int /*<<< orphan*/  edid; int /*<<< orphan*/ * buf; int /*<<< orphan*/  tx_urb; int /*<<< orphan*/ * bufend; struct usb_interface* interface; int /*<<< orphan*/  bulk_mutex; } ;
struct TYPE_17__ {int /*<<< orphan*/  product; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BUF_SIZE ; 
 int ENOMEM ; 
 int FBINFO_DEFAULT ; 
 int FBINFO_HWACCEL_COPYAREA ; 
 int FBINFO_HWACCEL_FILLRECT ; 
 int FBINFO_HWACCEL_IMAGEBLIT ; 
 int FBINFO_READS_FAST ; 
 int /*<<< orphan*/  FB_ACTIVATE_TEST ; 
 int /*<<< orphan*/  FB_TYPE_PACKED_PIXELS ; 
 int /*<<< orphan*/  FB_VISUAL_TRUECOLOR ; 
 int /*<<< orphan*/  FB_VMODE_NONINTERLACED ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  dlfb_bulk_callback ; 
 int /*<<< orphan*/  FUNC1 (struct dlfb_data*) ; 
 int /*<<< orphan*/  dlfb_ops ; 
 scalar_t__ FUNC2 (struct dlfb_data*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dlfb_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_11__*) ; 
 struct fb_info* FUNC7 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC10 (struct dlfb_data*) ; 
 int /*<<< orphan*/ * FUNC11 (int,int /*<<< orphan*/ ) ; 
 void* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 scalar_t__ FUNC16 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC18 (int) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC21 (TYPE_5__*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dlfb_data*) ; 
 TYPE_5__* FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct usb_interface*,struct dlfb_data*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_5__*,int) ; 

__attribute__((used)) static int
FUNC28(struct usb_interface *interface, const struct usb_device_id *id)
{
	struct dlfb_data *dev_info;
	struct fb_info *info;

	int ret;
	char rbuf[4];

	dev_info = FUNC12(sizeof(*dev_info), GFP_KERNEL);
	if (dev_info == NULL) {
		FUNC15("cannot allocate dev_info structure.\n");
		return -ENOMEM;
	}

	FUNC14(&dev_info->bulk_mutex);

	dev_info->udev = FUNC23(FUNC9(interface));
	dev_info->interface = interface;

	FUNC15("DisplayLink device attached\n");

	/* add framebuffer info to usb interface */
	FUNC26(interface, dev_info);

	dev_info->buf = FUNC11(BUF_SIZE, GFP_KERNEL);
	/* usb_buffer_alloc(dev_info->udev, BUF_SIZE , GFP_KERNEL, &dev_info->tx_urb->transfer_dma); */

	if (dev_info->buf == NULL) {
		FUNC15("unable to allocate memory for dlfb commands\n");
		goto out;
	}
	dev_info->bufend = dev_info->buf + BUF_SIZE;

	dev_info->tx_urb = FUNC20(0, GFP_KERNEL);
	FUNC22(dev_info->tx_urb, dev_info->udev,
			  FUNC27(dev_info->udev, 1), dev_info->buf, 0,
			  dlfb_bulk_callback, dev_info);

	ret =
	    FUNC21(dev_info->udev, FUNC25(dev_info->udev, 0),
			    (0x06), (0x80 | (0x02 << 5)), 0, 0, rbuf, 4, 0);
	FUNC15("ret control msg 0: %d %x%x%x%x\n", ret, rbuf[0], rbuf[1],
	       rbuf[2], rbuf[3]);

	FUNC1(dev_info);

	info = FUNC7(sizeof(u32) * 256, &dev_info->udev->dev);

	if (!info) {
		FUNC15("non posso allocare il framebuffer displaylink");
		goto out;
	}

	FUNC6(dev_info->edid, &info->var);

	FUNC15("EDID XRES %d YRES %d\n", info->var.xres, info->var.yres);

	if (FUNC2(dev_info, info->var.xres, info->var.yres) != 0) {
		info->var.xres = 1280;
		info->var.yres = 1024;
		if (FUNC2
		    (dev_info, info->var.xres, info->var.yres) != 0) {
			goto out;
		}
	}

	FUNC15("found valid mode...%d\n", info->var.pixclock);

	info->pseudo_palette = info->par;
	info->par = dev_info;

	dev_info->info = info;

	info->flags =
	    FBINFO_DEFAULT | FBINFO_READS_FAST | FBINFO_HWACCEL_IMAGEBLIT |
	    FBINFO_HWACCEL_COPYAREA | FBINFO_HWACCEL_FILLRECT;
	info->fbops = &dlfb_ops;
	info->screen_base = FUNC18(dev_info->screen_size);

	if (info->screen_base == NULL) {
		FUNC15
		    ("cannot allocate framebuffer virtual memory of %d bytes\n",
		     dev_info->screen_size);
		goto out0;
	}

	FUNC15("screen base allocated !!!\n");

	dev_info->backing_buffer = FUNC12(dev_info->screen_size, GFP_KERNEL);

	if (!dev_info->backing_buffer)
		FUNC15("non posso allocare il backing buffer\n");

	/* info->var = dev_info->si; */

	info->var.bits_per_pixel = 16;
	info->var.activate = FB_ACTIVATE_TEST;
	info->var.vmode = FB_VMODE_NONINTERLACED;

	info->var.red.offset = 11;
	info->var.red.length = 5;
	info->var.red.msb_right = 0;

	info->var.green.offset = 5;
	info->var.green.length = 6;
	info->var.green.msb_right = 0;

	info->var.blue.offset = 0;
	info->var.blue.length = 5;
	info->var.blue.msb_right = 0;

	/* info->var.pixclock =  (10000000 / FB_W * 1000 / FB_H)/2 ; */

	info->fix.smem_start = (unsigned long)info->screen_base;
	info->fix.smem_len = FUNC0(dev_info->screen_size);
	if (FUNC19(dev_info->udev->product) > 15) {
		FUNC13(info->fix.id, dev_info->udev->product, 15);
	} else {
		FUNC13(info->fix.id, dev_info->udev->product,
		       FUNC19(dev_info->udev->product));
	}
	info->fix.type = FB_TYPE_PACKED_PIXELS;
	info->fix.visual = FB_VISUAL_TRUECOLOR;
	info->fix.accel = info->flags;
	info->fix.line_length = dev_info->line_length;

	if (FUNC4(&info->cmap, 256, 0) < 0)
		goto out1;

	FUNC15("colormap allocated\n");
	if (FUNC16(info) < 0)
		goto out2;

	FUNC3(dev_info, 0, 0, dev_info->info->var.xres,
		  dev_info->info->var.yres, 0x30, 0xff, 0x30);

	return 0;

out2:
	FUNC5(&info->cmap);
out1:
	FUNC17(info->screen_base, dev_info->screen_size);
out0:
	FUNC8(info);
out:
	FUNC26(interface, NULL);
	FUNC24(dev_info->udev);
	FUNC10(dev_info);
	return -ENOMEM;

}