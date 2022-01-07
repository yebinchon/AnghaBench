
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vxlan_port {TYPE_2__* vs; } ;
struct vport {int dummy; } ;
struct sk_buff {int dummy; } ;
typedef int __be16 ;
struct TYPE_6__ {int sport; } ;
struct TYPE_5__ {TYPE_1__* sock; } ;
struct TYPE_4__ {int sk; } ;


 int EMSGSIZE ;
 int OVS_TUNNEL_ATTR_DST_PORT ;
 TYPE_3__* inet_sk (int ) ;
 scalar_t__ nla_put_u16 (struct sk_buff*,int ,int ) ;
 int ntohs (int ) ;
 struct vxlan_port* vxlan_vport (struct vport const*) ;

__attribute__((used)) static int vxlan_get_options(const struct vport *vport, struct sk_buff *skb)
{
 struct vxlan_port *vxlan_port = vxlan_vport(vport);
 __be16 dst_port = inet_sk(vxlan_port->vs->sock->sk)->sport;

 if (nla_put_u16(skb, OVS_TUNNEL_ATTR_DST_PORT, ntohs(dst_port)))
  return -EMSGSIZE;
 return 0;
}
