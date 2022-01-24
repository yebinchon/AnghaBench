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
struct synthvid_vram_location {int dummy; } ;
struct synthvid_msg_hdr {int dummy; } ;
struct TYPE_7__ {scalar_t__ user_ctx; } ;
struct TYPE_6__ {scalar_t__ user_ctx; scalar_t__ vram_gpa; int is_vram_gpa_specified; } ;
struct TYPE_5__ {int size; int /*<<< orphan*/  type; } ;
struct synthvid_msg {TYPE_3__ vram_ack; TYPE_2__ vram; TYPE_1__ vid_hdr; } ;
struct hvfb_par {int /*<<< orphan*/  wait; scalar_t__ init_buf; } ;
struct hv_device {int dummy; } ;
struct TYPE_8__ {scalar_t__ smem_start; } ;
struct fb_info {TYPE_4__ fix; struct hvfb_par* par; } ;

/* Variables and functions */
 int ENODEV ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  SYNTHVID_VRAM_LOCATION ; 
 int /*<<< orphan*/  VSP_TIMEOUT ; 
 struct fb_info* FUNC0 (struct hv_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct synthvid_msg*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct hv_device*,struct synthvid_msg*) ; 
 int /*<<< orphan*/  FUNC4 (struct hv_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct hv_device*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct hv_device *hdev)
{
	struct fb_info *info = FUNC0(hdev);
	struct hvfb_par *par = info->par;
	struct synthvid_msg *msg = (struct synthvid_msg *)par->init_buf;
	int t, ret = 0;

	/* Send VRAM location */
	FUNC1(msg, 0, sizeof(struct synthvid_msg));
	msg->vid_hdr.type = SYNTHVID_VRAM_LOCATION;
	msg->vid_hdr.size = sizeof(struct synthvid_msg_hdr) +
		sizeof(struct synthvid_vram_location);
	msg->vram.user_ctx = msg->vram.vram_gpa = info->fix.smem_start;
	msg->vram.is_vram_gpa_specified = 1;
	FUNC3(hdev, msg);

	t = FUNC6(&par->wait, VSP_TIMEOUT);
	if (!t) {
		FUNC2("Time out on waiting vram location ack\n");
		ret = -ETIMEDOUT;
		goto out;
	}
	if (msg->vram_ack.user_ctx != info->fix.smem_start) {
		FUNC2("Unable to set VRAM location\n");
		ret = -ENODEV;
		goto out;
	}

	/* Send pointer and situation update */
	FUNC4(hdev);
	FUNC5(hdev);

out:
	return ret;
}