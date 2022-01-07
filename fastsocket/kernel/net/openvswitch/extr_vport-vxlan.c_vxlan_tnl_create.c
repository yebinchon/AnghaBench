
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef void vxlan_sock ;
struct vxlan_port {void* vs; int name; } ;
struct vport_parms {int name; struct nlattr* options; int dp; } ;
typedef void vport ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;


 int EINVAL ;
 void* ERR_PTR (int) ;
 int IFNAMSIZ ;
 scalar_t__ IS_ERR (void*) ;
 int OVS_TUNNEL_ATTR_DST_PORT ;
 int htons (int ) ;
 struct nlattr* nla_find_nested (struct nlattr*,int ) ;
 int nla_get_u16 (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 struct net* ovs_dp_get_net (int ) ;
 void* ovs_vport_alloc (int,int *,struct vport_parms const*) ;
 int ovs_vport_free (void*) ;
 int ovs_vxlan_vport_ops ;
 int strncpy (int ,int ,int ) ;
 int vxlan_rcv ;
 void* vxlan_sock_add (struct net*,int ,int ,void*,int) ;
 struct vxlan_port* vxlan_vport (void*) ;

__attribute__((used)) static struct vport *vxlan_tnl_create(const struct vport_parms *parms)
{
 struct net *net = ovs_dp_get_net(parms->dp);
 struct nlattr *options = parms->options;
 struct vxlan_port *vxlan_port;
 struct vxlan_sock *vs;
 struct vport *vport;
 struct nlattr *a;
 u16 dst_port;
 int err;

 if (!options) {
  err = -EINVAL;
  goto error;
 }
 a = nla_find_nested(options, OVS_TUNNEL_ATTR_DST_PORT);
 if (a && nla_len(a) == sizeof(u16)) {
  dst_port = nla_get_u16(a);
 } else {

  err = -EINVAL;
  goto error;
 }

 vport = ovs_vport_alloc(sizeof(struct vxlan_port),
    &ovs_vxlan_vport_ops, parms);
 if (IS_ERR(vport))
  return vport;

 vxlan_port = vxlan_vport(vport);
 strncpy(vxlan_port->name, parms->name, IFNAMSIZ);

 vs = vxlan_sock_add(net, htons(dst_port), vxlan_rcv, vport, 1);
 if (IS_ERR(vs)) {
  ovs_vport_free(vport);
  return (void *)vs;
 }
 vxlan_port->vs = vs;

 return vport;

error:
 return ERR_PTR(err);
}
