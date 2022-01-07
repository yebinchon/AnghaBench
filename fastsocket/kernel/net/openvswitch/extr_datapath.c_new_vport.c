
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vport_parms {struct datapath* dp; } ;
struct vport {int dp_hash_node; int port_no; } ;
struct hlist_head {int dummy; } ;
struct datapath {int dummy; } ;


 int IS_ERR (struct vport*) ;
 int hlist_add_head_rcu (int *,struct hlist_head*) ;
 struct vport* ovs_vport_add (struct vport_parms const*) ;
 struct hlist_head* vport_hash_bucket (struct datapath*,int ) ;

__attribute__((used)) static struct vport *new_vport(const struct vport_parms *parms)
{
 struct vport *vport;

 vport = ovs_vport_add(parms);
 if (!IS_ERR(vport)) {
  struct datapath *dp = parms->dp;
  struct hlist_head *head = vport_hash_bucket(dp, vport->port_no);

  hlist_add_head_rcu(&vport->dp_hash_node, head);
 }
 return vport;
}
