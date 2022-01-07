
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wlp_rx_hdr {int RSSI; int LQI; int srcaddr; } ;
struct untd_hdr_rst {int dummy; } ;
struct untd_hdr_cmp {int dummy; } ;
struct untd_hdr_1st {int fragment_len; } ;
struct untd_hdr {int len; } ;
struct sk_buff {int ip_summed; struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct i1480u_rx_buf {struct sk_buff* data; TYPE_1__* urb; struct i1480u* i1480u; } ;
struct i1480u {size_t rx_untd_pkt_size; struct sk_buff* rx_skb; int rssi_stats; int lqe_stats; int rx_srcaddr; TYPE_2__* usb_iface; struct net_device* net_dev; } ;
struct device {int dummy; } ;
typedef int s8 ;
struct TYPE_4__ {struct device dev; } ;
struct TYPE_3__ {int actual_length; void* transfer_buffer; } ;


 int CHECKSUM_NONE ;
 struct sk_buff* dev_alloc_skb (int ) ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*,...) ;
 int dev_fnstart (struct device*,char*,struct i1480u*,void*,int) ;
 int dump_bytes (struct device*,void*,int) ;
 int i1480u_MAX_RX_PKT_SIZE ;




 int i1480u_drop (struct i1480u*,char*,...) ;
 int i1480u_fix (struct i1480u*,char*) ;
 int i1480u_skb_deliver (struct i1480u*) ;
 void* le16_to_cpu (int ) ;
 int memmove (int ,void*,size_t) ;
 scalar_t__ printk_ratelimit () ;
 int skb_pull (struct sk_buff*,size_t) ;
 int skb_put (struct sk_buff*,size_t) ;
 int skb_reserve (struct sk_buff*,int) ;
 int stats_add_sample (int *,int ) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ untd_hdr_rx_tx (struct untd_hdr*) ;
 int untd_hdr_type (struct untd_hdr*) ;

__attribute__((used)) static
void i1480u_rx_buffer(struct i1480u_rx_buf *rx_buf)
{
 unsigned pkt_completed = 0;
 size_t untd_hdr_size, untd_frg_size;
 size_t i1480u_hdr_size;
 struct wlp_rx_hdr *i1480u_hdr = ((void*)0);

 struct i1480u *i1480u = rx_buf->i1480u;
 struct sk_buff *skb = rx_buf->data;
 int size_left = rx_buf->urb->actual_length;
 void *ptr = rx_buf->urb->transfer_buffer;
 struct untd_hdr *untd_hdr;

 struct net_device *net_dev = i1480u->net_dev;
 struct device *dev = &i1480u->usb_iface->dev;
 struct sk_buff *new_skb;







 i1480u_hdr_size = sizeof(struct wlp_rx_hdr);

 while (size_left > 0) {
  if (pkt_completed) {
   i1480u_drop(i1480u, "RX: fragment follows completed"
      "packet in same buffer. Dropping\n");
   break;
  }
  untd_hdr = ptr;
  if (size_left < sizeof(*untd_hdr)) {
   i1480u_drop(i1480u, "RX: short UNTD header! Dropping\n");
   goto out;
  }
  if (unlikely(untd_hdr_rx_tx(untd_hdr) == 0)) {
   i1480u_drop(i1480u, "RX: TX bit set! Dropping\n");
   goto out;
  }
  switch (untd_hdr_type(untd_hdr)) {
  case 131: {
   struct untd_hdr_1st *untd_hdr_1st = (void *) untd_hdr;
   dev_dbg(dev, "1st fragment\n");
   untd_hdr_size = sizeof(struct untd_hdr_1st);
   if (i1480u->rx_skb != ((void*)0))
    i1480u_fix(i1480u, "RX: 1st fragment out of "
     "sequence! Fixing\n");
   if (size_left < untd_hdr_size + i1480u_hdr_size) {
    i1480u_drop(i1480u, "RX: short 1st fragment! "
     "Dropping\n");
    goto out;
   }
   i1480u->rx_untd_pkt_size = le16_to_cpu(untd_hdr->len)
       - i1480u_hdr_size;
   untd_frg_size = le16_to_cpu(untd_hdr_1st->fragment_len);
   if (size_left < untd_hdr_size + untd_frg_size) {
    i1480u_drop(i1480u,
         "RX: short payload! Dropping\n");
    goto out;
   }
   i1480u->rx_skb = skb;
   i1480u_hdr = (void *) untd_hdr_1st + untd_hdr_size;
   i1480u->rx_srcaddr = i1480u_hdr->srcaddr;
   skb_put(i1480u->rx_skb, untd_hdr_size + untd_frg_size);
   skb_pull(i1480u->rx_skb, untd_hdr_size + i1480u_hdr_size);
   stats_add_sample(&i1480u->lqe_stats, (s8) i1480u_hdr->LQI - 7);
   stats_add_sample(&i1480u->rssi_stats, i1480u_hdr->RSSI + 18);
   rx_buf->data = ((void*)0);
   break;
  }
  case 128: {
   dev_dbg(dev, "nxt fragment\n");
   untd_hdr_size = sizeof(struct untd_hdr_rst);
   if (i1480u->rx_skb == ((void*)0)) {
    i1480u_drop(i1480u, "RX: next fragment out of "
         "sequence! Dropping\n");
    goto out;
   }
   if (size_left < untd_hdr_size) {
    i1480u_drop(i1480u, "RX: short NXT fragment! "
         "Dropping\n");
    goto out;
   }
   untd_frg_size = le16_to_cpu(untd_hdr->len);
   if (size_left < untd_hdr_size + untd_frg_size) {
    i1480u_drop(i1480u,
         "RX: short payload! Dropping\n");
    goto out;
   }
   memmove(skb_put(i1480u->rx_skb, untd_frg_size),
     ptr + untd_hdr_size, untd_frg_size);
   break;
  }
  case 129: {
   dev_dbg(dev, "Lst fragment\n");
   untd_hdr_size = sizeof(struct untd_hdr_rst);
   if (i1480u->rx_skb == ((void*)0)) {
    i1480u_drop(i1480u, "RX: last fragment out of "
         "sequence! Dropping\n");
    goto out;
   }
   if (size_left < untd_hdr_size) {
    i1480u_drop(i1480u, "RX: short LST fragment! "
         "Dropping\n");
    goto out;
   }
   untd_frg_size = le16_to_cpu(untd_hdr->len);
   if (size_left < untd_frg_size + untd_hdr_size) {
    i1480u_drop(i1480u,
         "RX: short payload! Dropping\n");
    goto out;
   }
   memmove(skb_put(i1480u->rx_skb, untd_frg_size),
     ptr + untd_hdr_size, untd_frg_size);
   pkt_completed = 1;
   break;
  }
  case 130: {
   dev_dbg(dev, "cmp fragment\n");
   untd_hdr_size = sizeof(struct untd_hdr_cmp);
   if (i1480u->rx_skb != ((void*)0))
    i1480u_fix(i1480u, "RX: fix out-of-sequence CMP"
        " fragment!\n");
   if (size_left < untd_hdr_size + i1480u_hdr_size) {
    i1480u_drop(i1480u, "RX: short CMP fragment! "
         "Dropping\n");
    goto out;
   }
   i1480u->rx_untd_pkt_size = le16_to_cpu(untd_hdr->len);
   untd_frg_size = i1480u->rx_untd_pkt_size;
   if (size_left < i1480u->rx_untd_pkt_size + untd_hdr_size) {
    i1480u_drop(i1480u,
         "RX: short payload! Dropping\n");
    goto out;
   }
   i1480u->rx_skb = skb;
   i1480u_hdr = (void *) untd_hdr + untd_hdr_size;
   i1480u->rx_srcaddr = i1480u_hdr->srcaddr;
   stats_add_sample(&i1480u->lqe_stats, (s8) i1480u_hdr->LQI - 7);
   stats_add_sample(&i1480u->rssi_stats, i1480u_hdr->RSSI + 18);
   skb_put(i1480u->rx_skb, untd_hdr_size + i1480u->rx_untd_pkt_size);
   skb_pull(i1480u->rx_skb, untd_hdr_size + i1480u_hdr_size);
   rx_buf->data = ((void*)0);
   pkt_completed = 1;
   i1480u->rx_untd_pkt_size -= i1480u_hdr_size;
   break;
  }
  default:
   i1480u_drop(i1480u, "RX: unknown packet type %u! "
        "Dropping\n", untd_hdr_type(untd_hdr));
   goto out;
  }
  size_left -= untd_hdr_size + untd_frg_size;
  if (size_left > 0)
   ptr += untd_hdr_size + untd_frg_size;
 }
 if (pkt_completed)
  i1480u_skb_deliver(i1480u);
out:

 if (rx_buf->data == ((void*)0)) {

  new_skb = dev_alloc_skb(i1480u_MAX_RX_PKT_SIZE);
  if (!new_skb) {
   if (printk_ratelimit())
    dev_err(dev,
    "RX: cannot allocate RX buffer\n");
  } else {
   new_skb->dev = net_dev;
   new_skb->ip_summed = CHECKSUM_NONE;
   skb_reserve(new_skb, 2);
   rx_buf->data = new_skb;
  }
 }
 return;
}
