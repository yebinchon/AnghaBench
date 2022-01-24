#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {struct msm_mddi_client_data* platform_data; } ;
struct platform_device {int /*<<< orphan*/  id; TYPE_4__ dev; } ;
struct TYPE_5__ {TYPE_2__* platform_data; } ;
struct TYPE_7__ {char* name; int num_resources; TYPE_1__ dev; int /*<<< orphan*/  resource; int /*<<< orphan*/  id; } ;
struct TYPE_6__ {int /*<<< orphan*/  caps; int /*<<< orphan*/ * fb_data; int /*<<< orphan*/  unblank; int /*<<< orphan*/  blank; int /*<<< orphan*/  clear_vsync; int /*<<< orphan*/  request_vsync; int /*<<< orphan*/  wait_vsync; int /*<<< orphan*/  resume; int /*<<< orphan*/  suspend; } ;
struct panel_info {TYPE_3__ pdev; TYPE_2__ panel_data; struct msm_mddi_client_data* client_data; } ;
struct msm_mddi_client_data {int /*<<< orphan*/  fb_resource; int /*<<< orphan*/  (* remote_write ) (struct msm_mddi_client_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;struct msm_mddi_bridge_platform_data* private_client_data; } ;
struct msm_mddi_bridge_platform_data {int /*<<< orphan*/  (* init ) (struct msm_mddi_bridge_platform_data*,struct msm_mddi_client_data*) ;int /*<<< orphan*/  fb_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOSEL ; 
 int /*<<< orphan*/  GPIOSEL_VWAKEINT ; 
 int /*<<< orphan*/  INTMASK ; 
 int /*<<< orphan*/  INTMASK_VWAKEOUT ; 
 int /*<<< orphan*/  MSMFB_CAP_PARTIAL_UPDATES ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,char*) ; 
 struct panel_info* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,struct panel_info*) ; 
 int FUNC4 (struct panel_info*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct msm_mddi_client_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct msm_mddi_client_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct msm_mddi_bridge_platform_data*,struct msm_mddi_client_data*) ; 
 int /*<<< orphan*/  toshiba_blank ; 
 int /*<<< orphan*/  toshiba_clear_vsync ; 
 int /*<<< orphan*/  toshiba_request_vsync ; 
 int /*<<< orphan*/  toshiba_resume ; 
 int /*<<< orphan*/  toshiba_suspend ; 
 int /*<<< orphan*/  toshiba_unblank ; 
 int /*<<< orphan*/  toshiba_wait_vsync ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	int ret;
	struct msm_mddi_client_data *client_data = pdev->dev.platform_data;
	struct msm_mddi_bridge_platform_data *bridge_data =
		client_data->private_client_data;
	struct panel_info *panel =
		FUNC1(sizeof(struct panel_info), GFP_KERNEL);
	if (!panel)
		return -ENOMEM;
	FUNC3(pdev, panel);

	/* mddi_remote_write(mddi, 0, WAKEUP); */
	client_data->remote_write(client_data, GPIOSEL_VWAKEINT, GPIOSEL);
	client_data->remote_write(client_data, INTMASK_VWAKEOUT, INTMASK);

	ret = FUNC4(panel, 1);
	if (ret) {
		FUNC0(&pdev->dev, "mddi_bridge_setup_vsync failed\n");
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
	panel->panel_data.fb_data =  &bridge_data->fb_data;
	panel->panel_data.caps = MSMFB_CAP_PARTIAL_UPDATES;

	panel->pdev.name = "msm_panel";
	panel->pdev.id = pdev->id;
	panel->pdev.resource = client_data->fb_resource;
	panel->pdev.num_resources = 1;
	panel->pdev.dev.platform_data = &panel->panel_data;
	bridge_data->init(bridge_data, client_data);
	FUNC2(&panel->pdev);

	return 0;
}