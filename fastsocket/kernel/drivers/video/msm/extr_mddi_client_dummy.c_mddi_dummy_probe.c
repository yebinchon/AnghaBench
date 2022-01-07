
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct msm_mddi_client_data* platform_data; } ;
struct platform_device {int id; TYPE_1__ dev; } ;
struct TYPE_7__ {TYPE_3__* platform_data; } ;
struct TYPE_9__ {char* name; TYPE_2__ dev; int id; } ;
struct TYPE_8__ {int fb_data; int caps; int unblank; int blank; int resume; int suspend; } ;
struct panel_info {TYPE_4__ pdev; TYPE_3__ panel_data; } ;
struct msm_mddi_client_data {int private_client_data; int fb_resource; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MSMFB_CAP_PARTIAL_UPDATES ;
 int kfree (struct panel_info*) ;
 struct panel_info* kzalloc (int,int ) ;
 int mddi_dummy_blank ;
 int mddi_dummy_resume ;
 int mddi_dummy_suspend ;
 int mddi_dummy_unblank ;
 int platform_device_add_resources (TYPE_4__*,int ,int) ;
 int platform_device_register (TYPE_4__*) ;
 int platform_set_drvdata (struct platform_device*,struct panel_info*) ;

__attribute__((used)) static int mddi_dummy_probe(struct platform_device *pdev)
{
 struct msm_mddi_client_data *client_data = pdev->dev.platform_data;
 struct panel_info *panel =
  kzalloc(sizeof(struct panel_info), GFP_KERNEL);
 int ret;
 if (!panel)
  return -ENOMEM;
 platform_set_drvdata(pdev, panel);
 panel->panel_data.suspend = mddi_dummy_suspend;
 panel->panel_data.resume = mddi_dummy_resume;
 panel->panel_data.blank = mddi_dummy_blank;
 panel->panel_data.unblank = mddi_dummy_unblank;
 panel->panel_data.caps = MSMFB_CAP_PARTIAL_UPDATES;
 panel->pdev.name = "msm_panel";
 panel->pdev.id = pdev->id;
 platform_device_add_resources(&panel->pdev,
          client_data->fb_resource, 1);
 panel->panel_data.fb_data = client_data->private_client_data;
 panel->pdev.dev.platform_data = &panel->panel_data;
 ret = platform_device_register(&panel->pdev);
 if (ret) {
  kfree(panel);
  return ret;
 }
 return 0;
}
