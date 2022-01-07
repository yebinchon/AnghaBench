
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {struct msm_mddi_client_data* platform_data; } ;
struct platform_device {int id; TYPE_4__ dev; } ;
struct TYPE_5__ {TYPE_2__* platform_data; } ;
struct TYPE_7__ {char* name; int num_resources; TYPE_1__ dev; int resource; int id; } ;
struct TYPE_6__ {int caps; int * fb_data; int unblank; int blank; int clear_vsync; int request_vsync; int wait_vsync; int resume; int suspend; } ;
struct panel_info {TYPE_3__ pdev; TYPE_2__ panel_data; struct msm_mddi_client_data* client_data; } ;
struct msm_mddi_client_data {int fb_resource; int (* remote_write ) (struct msm_mddi_client_data*,int ,int ) ;struct msm_mddi_bridge_platform_data* private_client_data; } ;
struct msm_mddi_bridge_platform_data {int (* init ) (struct msm_mddi_bridge_platform_data*,struct msm_mddi_client_data*) ;int fb_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOSEL ;
 int GPIOSEL_VWAKEINT ;
 int INTMASK ;
 int INTMASK_VWAKEOUT ;
 int MSMFB_CAP_PARTIAL_UPDATES ;
 int dev_err (TYPE_4__*,char*) ;
 struct panel_info* kzalloc (int,int ) ;
 int platform_device_register (TYPE_3__*) ;
 int platform_set_drvdata (struct platform_device*,struct panel_info*) ;
 int setup_vsync (struct panel_info*,int) ;
 int stub1 (struct msm_mddi_client_data*,int ,int ) ;
 int stub2 (struct msm_mddi_client_data*,int ,int ) ;
 int stub3 (struct msm_mddi_bridge_platform_data*,struct msm_mddi_client_data*) ;
 int toshiba_blank ;
 int toshiba_clear_vsync ;
 int toshiba_request_vsync ;
 int toshiba_resume ;
 int toshiba_suspend ;
 int toshiba_unblank ;
 int toshiba_wait_vsync ;

__attribute__((used)) static int mddi_toshiba_probe(struct platform_device *pdev)
{
 int ret;
 struct msm_mddi_client_data *client_data = pdev->dev.platform_data;
 struct msm_mddi_bridge_platform_data *bridge_data =
  client_data->private_client_data;
 struct panel_info *panel =
  kzalloc(sizeof(struct panel_info), GFP_KERNEL);
 if (!panel)
  return -ENOMEM;
 platform_set_drvdata(pdev, panel);


 client_data->remote_write(client_data, GPIOSEL_VWAKEINT, GPIOSEL);
 client_data->remote_write(client_data, INTMASK_VWAKEOUT, INTMASK);

 ret = setup_vsync(panel, 1);
 if (ret) {
  dev_err(&pdev->dev, "mddi_bridge_setup_vsync failed\n");
  return ret;
 }

 panel->client_data = client_data;
 panel->panel_data.suspend = toshiba_suspend;
 panel->panel_data.resume = toshiba_resume;
 panel->panel_data.wait_vsync = toshiba_wait_vsync;
 panel->panel_data.request_vsync = toshiba_request_vsync;
 panel->panel_data.clear_vsync = toshiba_clear_vsync;
 panel->panel_data.blank = toshiba_blank;
 panel->panel_data.unblank = toshiba_unblank;
 panel->panel_data.fb_data = &bridge_data->fb_data;
 panel->panel_data.caps = MSMFB_CAP_PARTIAL_UPDATES;

 panel->pdev.name = "msm_panel";
 panel->pdev.id = pdev->id;
 panel->pdev.resource = client_data->fb_resource;
 panel->pdev.num_resources = 1;
 panel->pdev.dev.platform_data = &panel->panel_data;
 bridge_data->init(bridge_data, client_data);
 platform_device_register(&panel->pdev);

 return 0;
}
