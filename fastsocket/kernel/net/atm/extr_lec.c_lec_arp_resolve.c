
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lec_priv {int lane_version; scalar_t__ maximum_unknown_frame_count; int lec_arp_lock; struct atm_vcc* mcast_vcc; } ;
struct TYPE_2__ {int function; void* expires; } ;
struct lec_arp_table {scalar_t__ status; int no_tries; scalar_t__ packets_flooded; int is_rdesc; TYPE_1__ timer; void* timestamp; void* last_used; struct atm_vcc* vcc; } ;
struct atm_vcc {int dummy; } ;


 scalar_t__ ESI_ARP_PENDING ;
 scalar_t__ ESI_FLUSH_PENDING ;
 scalar_t__ ESI_FORWARD_DIRECT ;
 int HZ ;
 int add_timer (TYPE_1__*) ;
 int bus_mac ;
 int compare_ether_addr (unsigned char const*,int ) ;
 void* jiffies ;
 int l_arp_xmt ;
 int l_rdesc_arp_xmt ;
 int lec_arp_add (struct lec_priv*,struct lec_arp_table*) ;
 int lec_arp_expire_arp ;
 struct lec_arp_table* lec_arp_find (struct lec_priv*,unsigned char const*) ;
 int lec_arp_hold (struct lec_arp_table*) ;
 struct lec_arp_table* make_entry (struct lec_priv*,unsigned char const*) ;
 int pr_debug (char*,...) ;
 int send_to_lecd (struct lec_priv*,int ,unsigned char const*,int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct atm_vcc *lec_arp_resolve(struct lec_priv *priv,
           const unsigned char *mac_to_find, int is_rdesc,
           struct lec_arp_table **ret_entry)
{
 unsigned long flags;
 struct lec_arp_table *entry;
 struct atm_vcc *found;

 if (mac_to_find[0] & 0x01) {
  switch (priv->lane_version) {
  case 1:
   return priv->mcast_vcc;
  case 2:
   if (!compare_ether_addr(mac_to_find, bus_mac))
    return priv->mcast_vcc;
   break;
  default:
   break;
  }
 }

 spin_lock_irqsave(&priv->lec_arp_lock, flags);
 entry = lec_arp_find(priv, mac_to_find);

 if (entry) {
  if (entry->status == ESI_FORWARD_DIRECT) {

   entry->last_used = jiffies;
   lec_arp_hold(entry);
   *ret_entry = entry;
   found = entry->vcc;
   goto out;
  }




  if (entry->status == ESI_ARP_PENDING) {
   entry->no_tries = 0;
  }






  if (entry->status != ESI_FLUSH_PENDING &&
      entry->packets_flooded <
      priv->maximum_unknown_frame_count) {
   entry->packets_flooded++;
   pr_debug("LEC_ARP: Flooding..\n");
   found = priv->mcast_vcc;
   goto out;
  }





  lec_arp_hold(entry);
  *ret_entry = entry;
  pr_debug("lec: entry->status %d entry->vcc %p\n", entry->status,
   entry->vcc);
  found = ((void*)0);
 } else {

  entry = make_entry(priv, mac_to_find);
  pr_debug("LEC_ARP: Making entry\n");
  if (!entry) {
   found = priv->mcast_vcc;
   goto out;
  }
  lec_arp_add(priv, entry);

  entry->packets_flooded = 1;
  entry->status = ESI_ARP_PENDING;
  entry->no_tries = 1;
  entry->last_used = entry->timestamp = jiffies;
  entry->is_rdesc = is_rdesc;
  if (entry->is_rdesc)
   send_to_lecd(priv, l_rdesc_arp_xmt, mac_to_find, ((void*)0),
         ((void*)0));
  else
   send_to_lecd(priv, l_arp_xmt, mac_to_find, ((void*)0), ((void*)0));
  entry->timer.expires = jiffies + (1 * HZ);
  entry->timer.function = lec_arp_expire_arp;
  add_timer(&entry->timer);
  found = priv->mcast_vcc;
 }

out:
 spin_unlock_irqrestore(&priv->lec_arp_lock, flags);
 return found;
}
