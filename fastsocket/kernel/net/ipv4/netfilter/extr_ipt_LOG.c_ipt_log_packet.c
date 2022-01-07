
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int8_t ;
struct sk_buff {scalar_t__ mac_header; scalar_t__ network_header; TYPE_4__* dev; TYPE_3__* nf_bridge; } ;
struct TYPE_5__ {int level; } ;
struct TYPE_6__ {TYPE_1__ log; } ;
struct nf_loginfo {TYPE_2__ u; } ;
struct net_device {char* name; } ;
struct TYPE_8__ {int hard_header_len; } ;
struct TYPE_7__ {struct net_device* physoutdev; struct net_device* physindev; } ;


 struct nf_loginfo default_loginfo ;
 int dump_packet (struct nf_loginfo const*,struct sk_buff const*,int ) ;
 int log_lock ;
 int printk (char*,...) ;
 unsigned char* skb_mac_header (struct sk_buff const*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void
ipt_log_packet(u_int8_t pf,
        unsigned int hooknum,
        const struct sk_buff *skb,
        const struct net_device *in,
        const struct net_device *out,
        const struct nf_loginfo *loginfo,
        const char *prefix)
{
 if (!loginfo)
  loginfo = &default_loginfo;

 spin_lock_bh(&log_lock);
 printk("<%d>%sIN=%s OUT=%s ", loginfo->u.log.level,
        prefix,
        in ? in->name : "",
        out ? out->name : "");
 if (in && !out) {

  printk("MAC=");
  if (skb->dev && skb->dev->hard_header_len
      && skb->mac_header != skb->network_header) {
   int i;
   const unsigned char *p = skb_mac_header(skb);
   for (i = 0; i < skb->dev->hard_header_len; i++,p++)
    printk("%02x%c", *p,
           i==skb->dev->hard_header_len - 1
           ? ' ':':');
  } else
   printk(" ");
 }

 dump_packet(loginfo, skb, 0);
 printk("\n");
 spin_unlock_bh(&log_lock);
}
