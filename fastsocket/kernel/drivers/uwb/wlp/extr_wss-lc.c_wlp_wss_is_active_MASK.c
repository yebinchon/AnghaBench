#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wssid ;
struct wlp_wss {int /*<<< orphan*/  wssid; } ;
struct wlp_uuid {int dummy; } ;
struct uwb_dev_addr {int /*<<< orphan*/ * data; } ;
struct wlp_session {struct sk_buff* data; struct uwb_dev_addr neighbor_addr; int /*<<< orphan*/ * cb_priv; int /*<<< orphan*/  cb; int /*<<< orphan*/  exp_message; } ;
struct wlp_frame_assoc {scalar_t__ type; } ;
struct wlp {int /*<<< orphan*/  mutex; struct wlp_session* session; TYPE_2__* rc; } ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device dev; } ;
struct TYPE_4__ {TYPE_1__ uwb_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int HZ ; 
 int /*<<< orphan*/  WLP_ASSOC_C1 ; 
 int /*<<< orphan*/  WLP_ASSOC_C2 ; 
 scalar_t__ WLP_ASSOC_F0 ; 
 int WLP_PER_MSG_TIMEOUT ; 
 int /*<<< orphan*/  completion ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct wlp_uuid*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (struct wlp*,void*,struct wlp_uuid*,scalar_t__) ; 
 int FUNC9 (struct wlp*,struct sk_buff*) ; 
 int FUNC10 (struct wlp*,struct wlp_wss*,struct uwb_dev_addr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wlp_session_cb ; 

int FUNC11(struct wlp *wlp, struct wlp_wss *wss,
		      struct uwb_dev_addr *dev_addr)
{
	int result = 0;
	struct device *dev = &wlp->rc->uwb_dev.dev;
	FUNC1(completion);
	struct wlp_session session;
	struct sk_buff  *skb;
	struct wlp_frame_assoc *resp;
	struct wlp_uuid wssid;

	FUNC5(&wlp->mutex);
	/* Send C1 association frame */
	result = FUNC10(wlp, wss, dev_addr, WLP_ASSOC_C1);
	if (result < 0) {
		FUNC2(dev, "Unable to send C1 frame to neighbor "
			"%02x:%02x (%d)\n", dev_addr->data[1],
			dev_addr->data[0], result);
		result = 0;
		goto out;
	}
	/* Create session, wait for response */
	session.exp_message = WLP_ASSOC_C2;
	session.cb = wlp_session_cb;
	session.cb_priv = &completion;
	session.neighbor_addr = *dev_addr;
	FUNC0(wlp->session != NULL);
	wlp->session = &session;
	/* Wait for C2/F0 frame */
	result = FUNC7(&completion,
						   WLP_PER_MSG_TIMEOUT * HZ);
	if (result == 0) {
		FUNC2(dev, "Timeout while sending C1 to neighbor "
			     "%02x:%02x.\n", dev_addr->data[1],
			     dev_addr->data[0]);
		goto out;
	}
	if (result < 0) {
		FUNC2(dev, "Unable to send C1 to neighbor %02x:%02x.\n",
			dev_addr->data[1], dev_addr->data[0]);
		result = 0;
		goto out;
	}
	/* Parse message in session->data: it will be either C2 or F0 */
	skb = session.data;
	resp = (void *) skb->data;
	if (resp->type == WLP_ASSOC_F0) {
		result = FUNC9(wlp, skb);
		if (result < 0)
			FUNC2(dev, "WLP:  unable to parse incoming F0 "
				"frame from neighbor %02x:%02x.\n",
				dev_addr->data[1], dev_addr->data[0]);
		result = 0;
		goto error_resp_parse;
	}
	/* WLP version and message type fields have already been parsed */
	result = FUNC8(wlp, (void *)resp + sizeof(*resp), &wssid,
			       skb->len - sizeof(*resp));
	if (result < 0) {
		FUNC2(dev, "WLP: unable to obtain WSSID from C2 frame.\n");
		result = 0;
		goto error_resp_parse;
	}
	if (!FUNC4(&wssid, &wss->wssid, sizeof(wssid)))
		result = 1;
	else {
		FUNC2(dev, "WLP: Received a C2 frame without matching "
			"WSSID.\n");
		result = 0;
	}
error_resp_parse:
	FUNC3(skb);
out:
	wlp->session = NULL;
	FUNC6(&wlp->mutex);
	return result;
}