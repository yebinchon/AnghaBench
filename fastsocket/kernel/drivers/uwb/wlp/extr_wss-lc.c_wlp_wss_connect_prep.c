
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wlp_eda_node {scalar_t__ state; } ;
struct wlp_assoc_conn_ctx {int ws; struct wlp_eda_node eda_entry; struct sk_buff* skb; struct wlp* wlp; } ;
struct wlp {int (* stop_queue ) (struct wlp*) ;TYPE_2__* rc; } ;
struct sk_buff {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device dev; } ;
struct TYPE_4__ {TYPE_1__ uwb_dev; } ;


 int BUG_ON (int ) ;
 int ENOMEM ;
 int ENONET ;
 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ WLP_WSS_CONNECT_FAILED ;
 scalar_t__ WLP_WSS_UNCONNECTED ;
 int dev_err (struct device*,char*) ;
 struct wlp_assoc_conn_ctx* kmalloc (int,int ) ;
 scalar_t__ printk_ratelimit () ;
 int schedule_work (int *) ;
 int stub1 (struct wlp*) ;
 int wlp_wss_connect_send ;
 int wlp_wss_prep_hdr (struct wlp*,struct wlp_eda_node*,struct sk_buff*) ;

int wlp_wss_connect_prep(struct wlp *wlp, struct wlp_eda_node *eda_entry,
    void *_skb)
{
 int result = 0;
 struct device *dev = &wlp->rc->uwb_dev.dev;
 struct sk_buff *skb = _skb;
 struct wlp_assoc_conn_ctx *conn_ctx;

 if (eda_entry->state == WLP_WSS_UNCONNECTED) {

  BUG_ON(wlp->stop_queue == ((void*)0));
  wlp->stop_queue(wlp);
  conn_ctx = kmalloc(sizeof(*conn_ctx), GFP_ATOMIC);
  if (conn_ctx == ((void*)0)) {
   if (printk_ratelimit())
    dev_err(dev, "WLP: Unable to allocate memory "
     "for connection handling.\n");
   result = -ENOMEM;
   goto out;
  }
  conn_ctx->wlp = wlp;
  conn_ctx->skb = skb;
  conn_ctx->eda_entry = *eda_entry;
  INIT_WORK(&conn_ctx->ws, wlp_wss_connect_send);
  schedule_work(&conn_ctx->ws);
  result = 1;
 } else if (eda_entry->state == WLP_WSS_CONNECT_FAILED) {


  if (printk_ratelimit())
   dev_err(dev, "Could not connect to neighbor "
    "previously. Not retrying. \n");
  result = -ENONET;
  goto out;
 } else
  result = wlp_wss_prep_hdr(wlp, eda_entry, skb);
out:
 return result;
}
