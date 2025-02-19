
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vport_parms {scalar_t__ type; } ;
struct vport {int hash_node; TYPE_1__* ops; int dp; } ;
struct hlist_head {int dummy; } ;
struct TYPE_5__ {scalar_t__ type; struct vport* (* create ) (struct vport_parms const*) ;} ;
struct TYPE_4__ {int (* get_name ) (struct vport*) ;} ;


 int ARRAY_SIZE (TYPE_2__**) ;
 int EAFNOSUPPORT ;
 struct vport* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct vport*) ;
 int PTR_ERR (struct vport*) ;
 struct hlist_head* hash_bucket (int ,int ) ;
 int hlist_add_head_rcu (int *,struct hlist_head*) ;
 int ovs_dp_get_net (int ) ;
 struct vport* stub1 (struct vport_parms const*) ;
 int stub2 (struct vport*) ;
 TYPE_2__** vport_ops_list ;

struct vport *ovs_vport_add(const struct vport_parms *parms)
{
 struct vport *vport;
 int err = 0;
 int i;

 for (i = 0; i < ARRAY_SIZE(vport_ops_list); i++) {
  if (vport_ops_list[i]->type == parms->type) {
   struct hlist_head *bucket;

   vport = vport_ops_list[i]->create(parms);
   if (IS_ERR(vport)) {
    err = PTR_ERR(vport);
    goto out;
   }

   bucket = hash_bucket(ovs_dp_get_net(vport->dp),
          vport->ops->get_name(vport));
   hlist_add_head_rcu(&vport->hash_node, bucket);
   return vport;
  }
 }

 err = -EAFNOSUPPORT;

out:
 return ERR_PTR(err);
}
