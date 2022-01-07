
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ addr_len; int dev_addr; scalar_t__ hard_header_len; } ;
struct ipx_interface {int refcnt; int if_sklist_lock; int * if_node; } ;
struct datalink_proto {scalar_t__ header_length; } ;
typedef int __be16 ;






 scalar_t__ IPX_NODE_LEN ;
 int atomic_set (int *,int) ;
 int dev_hold (struct net_device*) ;
 struct ipx_interface* ipxitf_alloc (struct net_device*,int ,int ,struct datalink_proto*,int ,scalar_t__) ;
 int ipxitf_insert (struct ipx_interface*) ;
 int memcpy (char*,int ,scalar_t__) ;
 int memset (int *,int ,scalar_t__) ;
 int ntohs (int ) ;
 struct datalink_proto* p8022_datalink ;
 struct datalink_proto* p8023_datalink ;
 struct datalink_proto* pEII_datalink ;
 struct datalink_proto* pSNAP_datalink ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct ipx_interface *ipxitf_auto_create(struct net_device *dev,
      __be16 dlink_type)
{
 struct ipx_interface *intrfc = ((void*)0);
 struct datalink_proto *datalink;

 if (!dev)
  goto out;


 if (dev->addr_len > IPX_NODE_LEN)
  goto out;

 switch (ntohs(dlink_type)) {
 case 129: datalink = pEII_datalink; break;
 case 131: datalink = p8022_datalink; break;
 case 128: datalink = pSNAP_datalink; break;
 case 130: datalink = p8023_datalink; break;
 default: goto out;
 }

 intrfc = ipxitf_alloc(dev, 0, dlink_type, datalink, 0,
    dev->hard_header_len + datalink->header_length);

 if (intrfc) {
  memset(intrfc->if_node, 0, IPX_NODE_LEN);
  memcpy((char *)&(intrfc->if_node[IPX_NODE_LEN-dev->addr_len]),
   dev->dev_addr, dev->addr_len);
  spin_lock_init(&intrfc->if_sklist_lock);
  atomic_set(&intrfc->refcnt, 1);
  ipxitf_insert(intrfc);
  dev_hold(dev);
 }

out:
 return intrfc;
}
