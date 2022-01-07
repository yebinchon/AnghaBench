
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef int u8 ;
struct omapfb_platform_data {struct blizzard_platform_data* ctrl_platform_data; } ;
struct omapfb_mem_desc {int dummy; } ;
struct omapfb_device {TYPE_5__* dev; TYPE_4__* panel; TYPE_1__* int_ctrl; TYPE_2__* ext_if; } ;
struct blizzard_platform_data {unsigned long (* get_clock_rate ) (TYPE_5__*) ;scalar_t__ te_connected; int (* power_up ) (TYPE_5__*) ;int (* power_down ) (TYPE_5__*) ;} ;
struct TYPE_21__ {scalar_t__ data; int function; } ;
struct TYPE_20__ {struct omapfb_platform_data* platform_data; } ;
struct TYPE_19__ {int y_res; int x_res; } ;
struct TYPE_18__ {scalar_t__ format; int out_height; int out_width; scalar_t__ out_x; int height; int width; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_17__ {int (* init ) (struct omapfb_device*) ;int (* cleanup ) () ;int max_transmit_size; } ;
struct TYPE_16__ {int (* init ) (struct omapfb_device*,int,struct omapfb_mem_desc*) ;int (* cleanup ) () ;int mmap; int setup_mem; int get_color_key; int set_color_key; } ;
struct TYPE_15__ {int entry; } ;
struct TYPE_14__ {int te_connected; TYPE_1__* int_ctrl; TYPE_2__* extif; int (* power_down ) (TYPE_5__*) ;int req_sema; int free_req_list; TYPE_12__* req_pool; int pending_req_list; TYPE_8__ auto_update_timer; int screen_height; int screen_width; TYPE_3__ auto_update_window; int update_mode; int max_transmit_size; int version; int reg_timings; int (* power_up ) (TYPE_5__*) ;int req_lock; struct omapfb_device* fbdev; } ;
struct TYPE_13__ {int mmap; int setup_mem; int get_color_key; int set_color_key; } ;


 int ARRAY_SIZE (TYPE_12__*) ;
 int BLIZZARD_CONFIG ;
 int BLIZZARD_PLL_DIV ;
 int BLIZZARD_REV_CODE ;
 int BLIZZARD_VERSION_S1D13744 ;
 int BLIZZARD_VERSION_S1D13745 ;
 int BUG_ON (int) ;
 int ENODEV ;
 int ENOENT ;
 int INIT_LIST_HEAD (int *) ;
 int IRQ_REQ_POOL_SIZE ;
 int OMAPFB_UPDATE_DISABLED ;
 TYPE_11__ blizzard ;
 TYPE_10__ blizzard_ctrl ;
 int blizzard_read_reg (int ) ;
 int blizzard_update_window_auto ;
 int calc_blizzard_clk_rates (unsigned long,unsigned long*,unsigned long*) ;
 int calc_extif_timings (unsigned long,int*) ;
 int dev_err (TYPE_5__*,char*,...) ;
 int init_timer (TYPE_8__*) ;
 int list_add (int *,int *) ;
 int pr_info (char*,int,int) ;
 int sema_init (int *,int) ;
 int set_extif_timings (int *) ;
 int setup_tearsync (unsigned long,int) ;
 int spin_lock_init (int *) ;
 int stub1 (struct omapfb_device*,int,struct omapfb_mem_desc*) ;
 int stub2 (struct omapfb_device*) ;
 unsigned long stub3 (TYPE_5__*) ;
 int stub4 (TYPE_5__*) ;
 int stub5 (TYPE_5__*) ;
 int stub6 () ;
 int stub7 () ;

__attribute__((used)) static int blizzard_init(struct omapfb_device *fbdev, int ext_mode,
    struct omapfb_mem_desc *req_vram)
{
 int r = 0, i;
 u8 rev, conf;
 unsigned long ext_clk;
 int extif_div;
 unsigned long sys_clk, pix_clk;
 struct omapfb_platform_data *omapfb_conf;
 struct blizzard_platform_data *ctrl_conf;

 blizzard.fbdev = fbdev;

 BUG_ON(!fbdev->ext_if || !fbdev->int_ctrl);

 blizzard.fbdev = fbdev;
 blizzard.extif = fbdev->ext_if;
 blizzard.int_ctrl = fbdev->int_ctrl;

 omapfb_conf = fbdev->dev->platform_data;
 ctrl_conf = omapfb_conf->ctrl_platform_data;
 if (ctrl_conf == ((void*)0) || ctrl_conf->get_clock_rate == ((void*)0)) {
  dev_err(fbdev->dev, "s1d1374x: missing platform data\n");
  r = -ENOENT;
  goto err1;
 }

 blizzard.power_down = ctrl_conf->power_down;
 blizzard.power_up = ctrl_conf->power_up;

 spin_lock_init(&blizzard.req_lock);

 if ((r = blizzard.int_ctrl->init(fbdev, 1, req_vram)) < 0)
  goto err1;

 if ((r = blizzard.extif->init(fbdev)) < 0)
  goto err2;

 blizzard_ctrl.set_color_key = blizzard.int_ctrl->set_color_key;
 blizzard_ctrl.get_color_key = blizzard.int_ctrl->get_color_key;
 blizzard_ctrl.setup_mem = blizzard.int_ctrl->setup_mem;
 blizzard_ctrl.mmap = blizzard.int_ctrl->mmap;

 ext_clk = ctrl_conf->get_clock_rate(fbdev->dev);
 if ((r = calc_extif_timings(ext_clk, &extif_div)) < 0)
  goto err3;

 set_extif_timings(&blizzard.reg_timings);

 if (blizzard.power_up != ((void*)0))
  blizzard.power_up(fbdev->dev);

 calc_blizzard_clk_rates(ext_clk, &sys_clk, &pix_clk);

 if ((r = calc_extif_timings(sys_clk, &extif_div)) < 0)
  goto err3;
 set_extif_timings(&blizzard.reg_timings);

 if (!(blizzard_read_reg(BLIZZARD_PLL_DIV) & 0x80)) {
  dev_err(fbdev->dev,
   "controller not initialized by the bootloader\n");
  r = -ENODEV;
  goto err3;
 }

 if (ctrl_conf->te_connected) {
  if ((r = setup_tearsync(pix_clk, extif_div)) < 0)
   goto err3;
  blizzard.te_connected = 1;
 }

 rev = blizzard_read_reg(BLIZZARD_REV_CODE);
 conf = blizzard_read_reg(BLIZZARD_CONFIG);

 switch (rev & 0xfc) {
 case 0x9c:
  blizzard.version = BLIZZARD_VERSION_S1D13744;
  pr_info("omapfb: s1d13744 LCD controller rev %d "
   "initialized (CNF pins %x)\n", rev & 0x03, conf & 0x07);
  break;
 case 0xa4:
  blizzard.version = BLIZZARD_VERSION_S1D13745;
  pr_info("omapfb: s1d13745 LCD controller rev %d "
   "initialized (CNF pins %x)\n", rev & 0x03, conf & 0x07);
  break;
 default:
  dev_err(fbdev->dev, "invalid s1d1374x revision %02x\n",
   rev);
  r = -ENODEV;
  goto err3;
 }

 blizzard.max_transmit_size = blizzard.extif->max_transmit_size;

 blizzard.update_mode = OMAPFB_UPDATE_DISABLED;

 blizzard.auto_update_window.x = 0;
 blizzard.auto_update_window.y = 0;
 blizzard.auto_update_window.width = fbdev->panel->x_res;
 blizzard.auto_update_window.height = fbdev->panel->y_res;
 blizzard.auto_update_window.out_x = 0;
 blizzard.auto_update_window.out_x = 0;
 blizzard.auto_update_window.out_width = fbdev->panel->x_res;
 blizzard.auto_update_window.out_height = fbdev->panel->y_res;
 blizzard.auto_update_window.format = 0;

 blizzard.screen_width = fbdev->panel->x_res;
 blizzard.screen_height = fbdev->panel->y_res;

 init_timer(&blizzard.auto_update_timer);
 blizzard.auto_update_timer.function = blizzard_update_window_auto;
 blizzard.auto_update_timer.data = 0;

 INIT_LIST_HEAD(&blizzard.free_req_list);
 INIT_LIST_HEAD(&blizzard.pending_req_list);
 for (i = 0; i < ARRAY_SIZE(blizzard.req_pool); i++)
  list_add(&blizzard.req_pool[i].entry, &blizzard.free_req_list);
 BUG_ON(i <= IRQ_REQ_POOL_SIZE);
 sema_init(&blizzard.req_sema, i - IRQ_REQ_POOL_SIZE);

 return 0;
err3:
 if (blizzard.power_down != ((void*)0))
  blizzard.power_down(fbdev->dev);
 blizzard.extif->cleanup();
err2:
 blizzard.int_ctrl->cleanup();
err1:
 return r;
}
