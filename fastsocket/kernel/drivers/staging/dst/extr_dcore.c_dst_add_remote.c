
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dst_node {TYPE_1__* info; } ;
struct dst_network_ctl {int dummy; } ;
struct dst_ctl {int dummy; } ;
struct TYPE_2__ {int net; } ;


 int EEXIST ;
 int EINVAL ;
 int ENOMEM ;
 struct dst_node* dst_alloc_node (struct dst_ctl*,int ,int) ;
 int dst_node_add (struct dst_node*) ;
 int dst_node_init_connected (struct dst_node*,struct dst_network_ctl*) ;
 int dst_node_put (struct dst_node*) ;
 int dst_start_remote ;
 int memcpy (int *,struct dst_network_ctl*,int) ;

__attribute__((used)) static int dst_add_remote(struct dst_node *n, struct dst_ctl *ctl,
  void *data, unsigned int size)
{
 int err;
 struct dst_network_ctl *rctl = data;

 if (n)
  return -EEXIST;

 if (size != sizeof(struct dst_network_ctl))
  return -EINVAL;

 n = dst_alloc_node(ctl, dst_start_remote, 1);
 if (!n)
  return -ENOMEM;

 memcpy(&n->info->net, rctl, sizeof(struct dst_network_ctl));
 err = dst_node_init_connected(n, rctl);
 if (err)
  goto err_out_free;

 dst_node_add(n);

 return 0;

err_out_free:
 dst_node_put(n);
 return err;
}
