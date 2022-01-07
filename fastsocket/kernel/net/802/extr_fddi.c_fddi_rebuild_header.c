
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {TYPE_1__* dev; scalar_t__ data; } ;
struct TYPE_5__ {scalar_t__ ethertype; } ;
struct TYPE_6__ {TYPE_2__ llc_snap; } ;
struct fddihdr {TYPE_3__ hdr; int daddr; } ;
struct TYPE_4__ {int name; } ;


 int ETH_P_IP ;
 int arp_find (int ,struct sk_buff*) ;
 scalar_t__ htons (int ) ;
 int ntohs (scalar_t__) ;
 int printk (char*,int ,int ) ;

__attribute__((used)) static int fddi_rebuild_header(struct sk_buff *skb)
{
 struct fddihdr *fddi = (struct fddihdr *)skb->data;







 {
  printk("%s: Don't know how to resolve type %04X addresses.\n",
         skb->dev->name, ntohs(fddi->hdr.llc_snap.ethertype));
  return(0);
 }
}
