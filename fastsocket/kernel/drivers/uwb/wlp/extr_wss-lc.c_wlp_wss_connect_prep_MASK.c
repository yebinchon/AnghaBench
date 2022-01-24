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
struct wlp_eda_node {scalar_t__ state; } ;
struct wlp_assoc_conn_ctx {int /*<<< orphan*/  ws; struct wlp_eda_node eda_entry; struct sk_buff* skb; struct wlp* wlp; } ;
struct wlp {int /*<<< orphan*/  (* stop_queue ) (struct wlp*) ;TYPE_2__* rc; } ;
struct sk_buff {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device dev; } ;
struct TYPE_4__ {TYPE_1__ uwb_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int ENONET ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ WLP_WSS_CONNECT_FAILED ; 
 scalar_t__ WLP_WSS_UNCONNECTED ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct wlp_assoc_conn_ctx* FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct wlp*) ; 
 int /*<<< orphan*/  wlp_wss_connect_send ; 
 int FUNC7 (struct wlp*,struct wlp_eda_node*,struct sk_buff*) ; 

int FUNC8(struct wlp *wlp, struct wlp_eda_node *eda_entry,
			 void *_skb)
{
	int result = 0;
	struct device *dev = &wlp->rc->uwb_dev.dev;
	struct sk_buff *skb = _skb;
	struct wlp_assoc_conn_ctx *conn_ctx;

	if (eda_entry->state == WLP_WSS_UNCONNECTED) {
		/* We don't want any more packets while we set up connection */
		FUNC0(wlp->stop_queue == NULL);
		wlp->stop_queue(wlp);
		conn_ctx = FUNC3(sizeof(*conn_ctx), GFP_ATOMIC);
		if (conn_ctx == NULL) {
			if (FUNC4())
				FUNC2(dev, "WLP: Unable to allocate memory "
					"for connection handling.\n");
			result = -ENOMEM;
			goto out;
		}
		conn_ctx->wlp = wlp;
		conn_ctx->skb = skb;
		conn_ctx->eda_entry = *eda_entry;
		FUNC1(&conn_ctx->ws, wlp_wss_connect_send);
		FUNC5(&conn_ctx->ws);
		result = 1;
	} else if (eda_entry->state == WLP_WSS_CONNECT_FAILED) {
		/* Previous connection attempts failed, don't retry - see
		 * conditions for connection in WLP 0.99 [7.6.2] */
		if (FUNC4())
			FUNC2(dev, "Could not connect to neighbor "
			 "previously. Not retrying. \n");
		result = -ENONET;
		goto out;
	} else /* eda_entry->state == WLP_WSS_CONNECTED */
		result = FUNC7(wlp, eda_entry, skb);
out:
	return result;
}