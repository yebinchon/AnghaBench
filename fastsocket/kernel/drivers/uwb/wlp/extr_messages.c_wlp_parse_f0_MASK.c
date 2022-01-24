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
struct wlp_nonce {int dummy; } ;
struct wlp_frame_assoc {int dummy; } ;
struct wlp {TYPE_2__* rc; } ;
struct sk_buff {size_t len; void* data; } ;
struct device {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  rnonce_buf ;
typedef  enum wlp_assc_error { ____Placeholder_wlp_assc_error } wlp_assc_error ;
typedef  int /*<<< orphan*/  enonce_buf ;
struct TYPE_3__ {struct device dev; } ;
struct TYPE_4__ {TYPE_1__ uwb_dev; } ;

/* Variables and functions */
 int WLP_WSS_NONCE_STRSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct wlp*,void*,struct wlp_nonce*,size_t) ; 
 scalar_t__ FUNC3 (struct wlp*,void*,struct wlp_nonce*,size_t) ; 
 scalar_t__ FUNC4 (struct wlp*,void*,int*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,struct wlp_nonce*) ; 

int FUNC6(struct wlp *wlp, struct sk_buff *skb)
{
	struct device *dev = &wlp->rc->uwb_dev.dev;
	struct wlp_frame_assoc *f0 = (void *) skb->data;
	void *ptr = skb->data;
	size_t len = skb->len;
	size_t used;
	ssize_t result;
	struct wlp_nonce enonce, rnonce;
	enum wlp_assc_error assc_err;
	char enonce_buf[WLP_WSS_NONCE_STRSIZE];
	char rnonce_buf[WLP_WSS_NONCE_STRSIZE];

	used = sizeof(*f0);
	result = FUNC2(wlp, ptr + used, &enonce, len - used);
	if (result < 0) {
		FUNC0(dev, "WLP: unable to obtain Enrollee nonce "
			"attribute from F0 message.\n");
		goto error_parse;
	}
	used += result;
	result = FUNC3(wlp, ptr + used, &rnonce, len - used);
	if (result < 0) {
		FUNC0(dev, "WLP: unable to obtain Registrar nonce "
			"attribute from F0 message.\n");
		goto error_parse;
	}
	used += result;
	result = FUNC4(wlp, ptr + used, &assc_err, len - used);
	if (result < 0) {
		FUNC0(dev, "WLP: unable to obtain WLP Association error "
			"attribute from F0 message.\n");
		goto error_parse;
	}
	FUNC5(enonce_buf, sizeof(enonce_buf), &enonce);
	FUNC5(rnonce_buf, sizeof(rnonce_buf), &rnonce);
	FUNC0(dev, "WLP: Received F0 error frame from neighbor. Enrollee "
		"nonce: %s, Registrar nonce: %s, WLP Association error: %s.\n",
		enonce_buf, rnonce_buf, FUNC1(assc_err));
	result = 0;
error_parse:
	return result;
}