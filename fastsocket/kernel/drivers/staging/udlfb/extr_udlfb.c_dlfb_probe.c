
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


typedef int u32 ;
struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_15__ {int length; scalar_t__ msb_right; scalar_t__ offset; } ;
struct TYPE_14__ {int offset; int length; scalar_t__ msb_right; } ;
struct TYPE_13__ {int offset; int length; scalar_t__ msb_right; } ;
struct TYPE_12__ {int xres; int yres; int bits_per_pixel; TYPE_3__ blue; TYPE_2__ green; TYPE_1__ red; int vmode; int activate; int pixclock; } ;
struct TYPE_16__ {unsigned long smem_start; int accel; int line_length; int visual; int type; int id; int smem_len; } ;
struct fb_info {int flags; int * screen_base; int cmap; TYPE_11__ var; TYPE_4__ fix; int * fbops; struct dlfb_data* par; struct dlfb_data* pseudo_palette; } ;
struct dlfb_data {int screen_size; TYPE_5__* udev; struct fb_info* info; int line_length; void* backing_buffer; int edid; int * buf; int tx_urb; int * bufend; struct usb_interface* interface; int bulk_mutex; } ;
struct TYPE_17__ {int product; int dev; } ;


 int BUF_SIZE ;
 int ENOMEM ;
 int FBINFO_DEFAULT ;
 int FBINFO_HWACCEL_COPYAREA ;
 int FBINFO_HWACCEL_FILLRECT ;
 int FBINFO_HWACCEL_IMAGEBLIT ;
 int FBINFO_READS_FAST ;
 int FB_ACTIVATE_TEST ;
 int FB_TYPE_PACKED_PIXELS ;
 int FB_VISUAL_TRUECOLOR ;
 int FB_VMODE_NONINTERLACED ;
 int GFP_KERNEL ;
 int PAGE_ALIGN (int) ;
 int dlfb_bulk_callback ;
 int dlfb_edid (struct dlfb_data*) ;
 int dlfb_ops ;
 scalar_t__ dlfb_set_video_mode (struct dlfb_data*,int,int) ;
 int draw_rect (struct dlfb_data*,int ,int ,int,int,int,int,int) ;
 scalar_t__ fb_alloc_cmap (int *,int,int ) ;
 int fb_dealloc_cmap (int *) ;
 int fb_parse_edid (int ,TYPE_11__*) ;
 struct fb_info* framebuffer_alloc (int,int *) ;
 int framebuffer_release (struct fb_info*) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct dlfb_data*) ;
 int * kmalloc (int,int ) ;
 void* kzalloc (int,int ) ;
 int memcpy (int ,int ,int) ;
 int mutex_init (int *) ;
 int printk (char*,...) ;
 scalar_t__ register_framebuffer (struct fb_info*) ;
 int rvfree (int *,int) ;
 int * rvmalloc (int) ;
 int strlen (int ) ;
 int usb_alloc_urb (int ,int ) ;
 int usb_control_msg (TYPE_5__*,int ,int,int,int ,int ,char*,int,int ) ;
 int usb_fill_bulk_urb (int ,TYPE_5__*,int ,int *,int ,int ,struct dlfb_data*) ;
 TYPE_5__* usb_get_dev (int ) ;
 int usb_put_dev (TYPE_5__*) ;
 int usb_rcvctrlpipe (TYPE_5__*,int ) ;
 int usb_set_intfdata (struct usb_interface*,struct dlfb_data*) ;
 int usb_sndbulkpipe (TYPE_5__*,int) ;

__attribute__((used)) static int
dlfb_probe(struct usb_interface *interface, const struct usb_device_id *id)
{
 struct dlfb_data *dev_info;
 struct fb_info *info;

 int ret;
 char rbuf[4];

 dev_info = kzalloc(sizeof(*dev_info), GFP_KERNEL);
 if (dev_info == ((void*)0)) {
  printk("cannot allocate dev_info structure.\n");
  return -ENOMEM;
 }

 mutex_init(&dev_info->bulk_mutex);

 dev_info->udev = usb_get_dev(interface_to_usbdev(interface));
 dev_info->interface = interface;

 printk("DisplayLink device attached\n");


 usb_set_intfdata(interface, dev_info);

 dev_info->buf = kmalloc(BUF_SIZE, GFP_KERNEL);


 if (dev_info->buf == ((void*)0)) {
  printk("unable to allocate memory for dlfb commands\n");
  goto out;
 }
 dev_info->bufend = dev_info->buf + BUF_SIZE;

 dev_info->tx_urb = usb_alloc_urb(0, GFP_KERNEL);
 usb_fill_bulk_urb(dev_info->tx_urb, dev_info->udev,
     usb_sndbulkpipe(dev_info->udev, 1), dev_info->buf, 0,
     dlfb_bulk_callback, dev_info);

 ret =
     usb_control_msg(dev_info->udev, usb_rcvctrlpipe(dev_info->udev, 0),
       (0x06), (0x80 | (0x02 << 5)), 0, 0, rbuf, 4, 0);
 printk("ret control msg 0: %d %x%x%x%x\n", ret, rbuf[0], rbuf[1],
        rbuf[2], rbuf[3]);

 dlfb_edid(dev_info);

 info = framebuffer_alloc(sizeof(u32) * 256, &dev_info->udev->dev);

 if (!info) {
  printk("non posso allocare il framebuffer displaylink");
  goto out;
 }

 fb_parse_edid(dev_info->edid, &info->var);

 printk("EDID XRES %d YRES %d\n", info->var.xres, info->var.yres);

 if (dlfb_set_video_mode(dev_info, info->var.xres, info->var.yres) != 0) {
  info->var.xres = 1280;
  info->var.yres = 1024;
  if (dlfb_set_video_mode
      (dev_info, info->var.xres, info->var.yres) != 0) {
   goto out;
  }
 }

 printk("found valid mode...%d\n", info->var.pixclock);

 info->pseudo_palette = info->par;
 info->par = dev_info;

 dev_info->info = info;

 info->flags =
     FBINFO_DEFAULT | FBINFO_READS_FAST | FBINFO_HWACCEL_IMAGEBLIT |
     FBINFO_HWACCEL_COPYAREA | FBINFO_HWACCEL_FILLRECT;
 info->fbops = &dlfb_ops;
 info->screen_base = rvmalloc(dev_info->screen_size);

 if (info->screen_base == ((void*)0)) {
  printk
      ("cannot allocate framebuffer virtual memory of %d bytes\n",
       dev_info->screen_size);
  goto out0;
 }

 printk("screen base allocated !!!\n");

 dev_info->backing_buffer = kzalloc(dev_info->screen_size, GFP_KERNEL);

 if (!dev_info->backing_buffer)
  printk("non posso allocare il backing buffer\n");



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



 info->fix.smem_start = (unsigned long)info->screen_base;
 info->fix.smem_len = PAGE_ALIGN(dev_info->screen_size);
 if (strlen(dev_info->udev->product) > 15) {
  memcpy(info->fix.id, dev_info->udev->product, 15);
 } else {
  memcpy(info->fix.id, dev_info->udev->product,
         strlen(dev_info->udev->product));
 }
 info->fix.type = FB_TYPE_PACKED_PIXELS;
 info->fix.visual = FB_VISUAL_TRUECOLOR;
 info->fix.accel = info->flags;
 info->fix.line_length = dev_info->line_length;

 if (fb_alloc_cmap(&info->cmap, 256, 0) < 0)
  goto out1;

 printk("colormap allocated\n");
 if (register_framebuffer(info) < 0)
  goto out2;

 draw_rect(dev_info, 0, 0, dev_info->info->var.xres,
    dev_info->info->var.yres, 0x30, 0xff, 0x30);

 return 0;

out2:
 fb_dealloc_cmap(&info->cmap);
out1:
 rvfree(info->screen_base, dev_info->screen_size);
out0:
 framebuffer_release(info);
out:
 usb_set_intfdata(interface, ((void*)0));
 usb_put_dev(dev_info->udev);
 kfree(dev_info);
 return -ENOMEM;

}
