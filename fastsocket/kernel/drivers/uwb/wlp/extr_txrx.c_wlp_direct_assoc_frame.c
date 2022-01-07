
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wlp_frame_assoc {int type; } ;
struct uwb_dev_addr {int dummy; } ;
struct wlp_assoc_frame_ctx {int ws; struct uwb_dev_addr src; struct sk_buff* skb; struct wlp* wlp; } ;
struct wlp {TYPE_2__* rc; } ;
struct sk_buff {scalar_t__ data; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device dev; } ;
struct TYPE_4__ {TYPE_1__ uwb_dev; } ;


 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;




 int dev_err (struct device*,char*,...) ;
 int kfree (struct wlp_assoc_frame_ctx*) ;
 int kfree_skb (struct sk_buff*) ;
 struct wlp_assoc_frame_ctx* kmalloc (int,int ) ;
 int schedule_work (int *) ;
 int wlp_handle_c1_frame ;
 int wlp_handle_c3_frame ;
 int wlp_handle_d1_frame ;

__attribute__((used)) static
void wlp_direct_assoc_frame(struct wlp *wlp, struct sk_buff *skb,
      struct uwb_dev_addr *src)
{
 struct device *dev = &wlp->rc->uwb_dev.dev;
 struct wlp_frame_assoc *assoc = (void *) skb->data;
 struct wlp_assoc_frame_ctx *frame_ctx;

 frame_ctx = kmalloc(sizeof(*frame_ctx), GFP_ATOMIC);
 if (frame_ctx == ((void*)0)) {
  dev_err(dev, "WLP: Unable to allocate memory for association "
   "frame handling.\n");
  kfree_skb(skb);
  return;
 }
 frame_ctx->wlp = wlp;
 frame_ctx->skb = skb;
 frame_ctx->src = *src;
 switch (assoc->type) {
 case 129:
  INIT_WORK(&frame_ctx->ws, wlp_handle_d1_frame);
  schedule_work(&frame_ctx->ws);
  break;
 case 128:
  kfree_skb(skb);
  kfree(frame_ctx);
  break;
 case 131:
  INIT_WORK(&frame_ctx->ws, wlp_handle_c1_frame);
  schedule_work(&frame_ctx->ws);
  break;
 case 130:
  INIT_WORK(&frame_ctx->ws, wlp_handle_c3_frame);
  schedule_work(&frame_ctx->ws);
  break;
 default:
  dev_err(dev, "Received unexpected association frame. "
   "Type = %d \n", assoc->type);
  kfree_skb(skb);
  kfree(frame_ctx);
  break;
 }
}
