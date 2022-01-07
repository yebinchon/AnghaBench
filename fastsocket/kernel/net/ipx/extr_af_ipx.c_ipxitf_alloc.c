
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipx_interface {unsigned char if_internal; int if_ipx_offset; int if_sklist_lock; int refcnt; int if_sklist; int if_sknum; struct datalink_proto* if_dlink; int if_dlink_type; int if_netnum; struct net_device* if_dev; } ;
struct datalink_proto {int dummy; } ;
typedef int __be32 ;
typedef int __be16 ;


 int GFP_ATOMIC ;
 int INIT_HLIST_HEAD (int *) ;
 int IPX_MIN_EPHEMERAL_SOCKET ;
 int atomic_set (int *,int) ;
 struct ipx_interface* kmalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct ipx_interface *ipxitf_alloc(struct net_device *dev, __be32 netnum,
       __be16 dlink_type,
       struct datalink_proto *dlink,
       unsigned char internal,
       int ipx_offset)
{
 struct ipx_interface *intrfc = kmalloc(sizeof(*intrfc), GFP_ATOMIC);

 if (intrfc) {
  intrfc->if_dev = dev;
  intrfc->if_netnum = netnum;
  intrfc->if_dlink_type = dlink_type;
  intrfc->if_dlink = dlink;
  intrfc->if_internal = internal;
  intrfc->if_ipx_offset = ipx_offset;
  intrfc->if_sknum = IPX_MIN_EPHEMERAL_SOCKET;
  INIT_HLIST_HEAD(&intrfc->if_sklist);
  atomic_set(&intrfc->refcnt, 1);
  spin_lock_init(&intrfc->if_sklist_lock);
 }

 return intrfc;
}
