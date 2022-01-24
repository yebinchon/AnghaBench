#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wlp_wss {int /*<<< orphan*/  virtual_addr; int /*<<< orphan*/  tag; int /*<<< orphan*/  wssid; } ;
struct TYPE_6__ {int /*<<< orphan*/  type; int /*<<< orphan*/  mux_hdr; } ;
struct wlp_frame_assoc {int type; int /*<<< orphan*/  msg_type; int /*<<< orphan*/  version; TYPE_3__ hdr; } ;
struct wlp_attr_wssid {int dummy; } ;
struct wlp_attr_wss_virt {int dummy; } ;
struct wlp_attr_wss_tag {int dummy; } ;
struct wlp {TYPE_2__* rc; } ;
struct sk_buff {scalar_t__ data; } ;
struct device {int dummy; } ;
typedef  enum wlp_assoc_type { ____Placeholder_wlp_assoc_type } wlp_assoc_type ;
struct TYPE_4__ {struct device dev; } ;
struct TYPE_5__ {TYPE_1__ uwb_dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  WLP_FRAME_ASSOCIATION ; 
 int /*<<< orphan*/  WLP_PROTOCOL_ID ; 
 int /*<<< orphan*/  WLP_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wlp_attr_wss_tag*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wlp_attr_wss_virt*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct wlp_attr_wssid*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
int FUNC9(struct wlp *wlp, struct wlp_wss *wss,
			 struct sk_buff **skb, enum wlp_assoc_type type)
{
	struct device *dev = &wlp->rc->uwb_dev.dev;
	int result  = -ENOMEM;
	struct {
		struct wlp_frame_assoc c_hdr;
		struct wlp_attr_wssid wssid;
		struct wlp_attr_wss_tag wss_tag;
		struct wlp_attr_wss_virt wss_virt;
	} *c;
	struct sk_buff *_skb;

	_skb = FUNC1(sizeof(*c));
	if (_skb == NULL) {
		FUNC2(dev, "WLP: Unable to allocate memory for C3/C4 "
			"association frame. \n");
		goto error_alloc;
	}
	c = (void *) _skb->data;
	c->c_hdr.hdr.mux_hdr = FUNC0(WLP_PROTOCOL_ID);
	c->c_hdr.hdr.type = WLP_FRAME_ASSOCIATION;
	c->c_hdr.type = type;
	FUNC5(&c->c_hdr.version, WLP_VERSION);
	FUNC4(&c->c_hdr.msg_type, type);
	FUNC8(&c->wssid, &wss->wssid);
	FUNC6(&c->wss_tag, wss->tag);
	FUNC7(&c->wss_virt, &wss->virtual_addr);
	FUNC3(_skb, sizeof(*c));
	*skb = _skb;
	result = 0;
error_alloc:
	return result;
}