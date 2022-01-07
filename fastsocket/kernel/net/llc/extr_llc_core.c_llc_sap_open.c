
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char lsap; } ;
struct llc_sap {int (* rcv_func ) (struct sk_buff*,struct net_device*,struct packet_type*,struct net_device*) ;TYPE_1__ laddr; } ;


 scalar_t__ __llc_sap_find (unsigned char) ;
 int llc_add_sap (struct llc_sap*) ;
 struct llc_sap* llc_sap_alloc () ;
 int llc_sap_list_lock ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

struct llc_sap *llc_sap_open(unsigned char lsap,
        int (*func)(struct sk_buff *skb,
      struct net_device *dev,
      struct packet_type *pt,
      struct net_device *orig_dev))
{
 struct llc_sap *sap = ((void*)0);

 write_lock_bh(&llc_sap_list_lock);
 if (__llc_sap_find(lsap))
  goto out;
 sap = llc_sap_alloc();
 if (!sap)
  goto out;
 sap->laddr.lsap = lsap;
 sap->rcv_func = func;
 llc_add_sap(sap);
out:
 write_unlock_bh(&llc_sap_list_lock);
 return sap;
}
