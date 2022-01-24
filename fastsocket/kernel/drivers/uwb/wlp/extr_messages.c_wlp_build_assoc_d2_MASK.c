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
struct wlp_wss_info {int dummy; } ;
struct wlp_wss {int dummy; } ;
struct wlp_uuid {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  type; int /*<<< orphan*/  mux_hdr; } ;
struct wlp_frame_assoc {void* attr; int /*<<< orphan*/  msg_type; int /*<<< orphan*/  version; int /*<<< orphan*/  type; TYPE_3__ hdr; } ;
struct wlp_device_info {int /*<<< orphan*/  prim_dev_type; int /*<<< orphan*/  serial; int /*<<< orphan*/  model_nr; int /*<<< orphan*/  model_name; int /*<<< orphan*/  manufacturer; int /*<<< orphan*/  name; } ;
struct wlp_attr_wss_info {int dummy; } ;
struct wlp_attr_wlp_assc_err {int dummy; } ;
struct wlp_attr_uuid_r {int dummy; } ;
struct wlp_attr_uuid_e {int dummy; } ;
struct wlp_attr_serial {int dummy; } ;
struct wlp_attr_prim_dev_type {int dummy; } ;
struct wlp_attr_model_nr {int dummy; } ;
struct wlp_attr_model_name {int dummy; } ;
struct wlp_attr_manufacturer {int dummy; } ;
struct wlp_attr_dev_name {int dummy; } ;
struct TYPE_8__ {scalar_t__ state; int /*<<< orphan*/  name; } ;
struct wlp {TYPE_4__ wss; int /*<<< orphan*/  uuid; struct wlp_device_info* dev_info; TYPE_2__* rc; } ;
struct sk_buff {scalar_t__ data; } ;
struct device {int dummy; } ;
struct TYPE_5__ {struct device dev; } ;
struct TYPE_6__ {TYPE_1__ uwb_dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  WLP_ASSOC_D2 ; 
 int /*<<< orphan*/  WLP_ASSOC_ERROR_NONE ; 
 int /*<<< orphan*/  WLP_FRAME_ASSOCIATION ; 
 int /*<<< orphan*/  WLP_PROTOCOL_ID ; 
 int /*<<< orphan*/  WLP_VERSION ; 
 scalar_t__ WLP_WSS_STATE_ACTIVE ; 
 int FUNC0 (struct wlp*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (void*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (void*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (void*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (void*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (void*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC13 (void*,struct wlp_uuid*) ; 
 scalar_t__ FUNC14 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (void*,TYPE_4__*) ; 

__attribute__((used)) static
int FUNC18(struct wlp *wlp, struct wlp_wss *wss,
		       struct sk_buff **skb, struct wlp_uuid *uuid_e)
{

	struct device *dev = &wlp->rc->uwb_dev.dev;
	int result = 0;
	struct wlp_device_info *info;
	size_t used = 0;
	struct wlp_frame_assoc *_d2;
	struct sk_buff *_skb;
	void *d2_itr;
	size_t mem_needed;

	if (wlp->dev_info == NULL) {
		result = FUNC0(wlp);
		if (result < 0) {
			FUNC3(dev, "WLP: Unable to setup device "
				"information for D2 message.\n");
			goto error;
		}
	}
	info = wlp->dev_info;
	mem_needed = sizeof(*_d2)
		      + sizeof(struct wlp_attr_uuid_e)
		      + sizeof(struct wlp_attr_uuid_r)
		      + sizeof(struct wlp_attr_dev_name)
		      + FUNC5(info->name)
		      + sizeof(struct wlp_attr_manufacturer)
		      + FUNC5(info->manufacturer)
		      + sizeof(struct wlp_attr_model_name)
		      + FUNC5(info->model_name)
		      + sizeof(struct wlp_attr_model_nr)
		      + FUNC5(info->model_nr)
		      + sizeof(struct wlp_attr_serial)
		      + FUNC5(info->serial)
		      + sizeof(struct wlp_attr_prim_dev_type)
		      + sizeof(struct wlp_attr_wlp_assc_err);
	if (wlp->wss.state >= WLP_WSS_STATE_ACTIVE)
		mem_needed += sizeof(struct wlp_attr_wss_info)
			      + sizeof(struct wlp_wss_info)
			      + FUNC5(wlp->wss.name);
	_skb = FUNC2(mem_needed);
	if (_skb == NULL) {
		FUNC3(dev, "WLP: Cannot allocate memory for association "
			"message.\n");
		result = -ENOMEM;
		goto error;
	}
	_d2 = (void *) _skb->data;
	_d2->hdr.mux_hdr = FUNC1(WLP_PROTOCOL_ID);
	_d2->hdr.type = WLP_FRAME_ASSOCIATION;
	_d2->type = WLP_ASSOC_D2;

	FUNC15(&_d2->version, WLP_VERSION);
	FUNC10(&_d2->msg_type, WLP_ASSOC_D2);
	d2_itr = _d2->attr;
	used = FUNC13(d2_itr, uuid_e);
	used += FUNC14(d2_itr + used, &wlp->uuid);
	if (wlp->wss.state >= WLP_WSS_STATE_ACTIVE)
		used += FUNC17(d2_itr + used, &wlp->wss);
	used += FUNC6(d2_itr + used, info->name,
				 FUNC5(info->name));
	used += FUNC7(d2_itr + used, info->manufacturer,
				     FUNC5(info->manufacturer));
	used += FUNC8(d2_itr + used, info->model_name,
				   FUNC5(info->model_name));
	used += FUNC9(d2_itr + used, info->model_nr,
				 FUNC5(info->model_nr));
	used += FUNC12(d2_itr + used, info->serial,
			       FUNC5(info->serial));
	used += FUNC11(d2_itr + used, &info->prim_dev_type);
	used += FUNC16(d2_itr + used, WLP_ASSOC_ERROR_NONE);
	FUNC4(_skb, sizeof(*_d2) + used);
	*skb = _skb;
error:
	return result;
}