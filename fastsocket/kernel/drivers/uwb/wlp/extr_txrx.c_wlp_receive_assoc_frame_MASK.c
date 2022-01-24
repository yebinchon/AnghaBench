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
typedef  scalar_t__ u8 ;
struct TYPE_6__ {int /*<<< orphan*/ * data; } ;
struct wlp_session {scalar_t__ exp_message; TYPE_3__ neighbor_addr; int /*<<< orphan*/  (* cb ) (struct wlp*) ;struct sk_buff* data; } ;
struct wlp_frame_assoc {scalar_t__ type; int /*<<< orphan*/  version; } ;
struct wlp {struct wlp_session* session; TYPE_2__* rc; } ;
struct uwb_dev_addr {int /*<<< orphan*/ * data; } ;
struct sk_buff {scalar_t__ data; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;
struct TYPE_5__ {TYPE_1__ uwb_dev; } ;

/* Variables and functions */
 scalar_t__ WLP_ASSOC_F0 ; 
 scalar_t__ WLP_VERSION ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,struct uwb_dev_addr*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wlp*) ; 
 int /*<<< orphan*/  FUNC4 (struct wlp*,struct sk_buff*,struct uwb_dev_addr*) ; 
 scalar_t__ FUNC5 (struct wlp*,int /*<<< orphan*/ *,scalar_t__*,int) ; 

__attribute__((used)) static
void FUNC6(struct wlp *wlp, struct sk_buff *skb,
			     struct uwb_dev_addr *src)
{
	struct device *dev = &wlp->rc->uwb_dev.dev;
	struct wlp_frame_assoc *assoc = (void *) skb->data;
	struct wlp_session *session = wlp->session;
	u8 version;

	if (FUNC5(wlp, &assoc->version, &version,
			    sizeof(assoc->version)) < 0)
		goto error;
	if (version != WLP_VERSION) {
		FUNC0(dev, "Unsupported WLP version in association "
			"message.\n");
		goto error;
	}
	if (session != NULL) {
		/* Function that created this session is still holding the
		 * &wlp->mutex to protect this session. */
		if (assoc->type == session->exp_message ||
		    assoc->type == WLP_ASSOC_F0) {
			if (!FUNC2(&session->neighbor_addr, src,
				   sizeof(*src))) {
				session->data = skb;
				(session->cb)(wlp);
			} else {
				FUNC0(dev, "Received expected message from "
					"unexpected source.  Expected message "
					"%d or F0 from %02x:%02x, but received "
					"it from %02x:%02x. Dropping.\n",
					session->exp_message,
					session->neighbor_addr.data[1],
					session->neighbor_addr.data[0],
					src->data[1], src->data[0]);
				goto error;
			}
		} else {
			FUNC0(dev, "Association already in progress. "
				"Dropping.\n");
			goto error;
		}
	} else {
		FUNC4(wlp, skb, src);
	}
	return;
error:
	FUNC1(skb);
}