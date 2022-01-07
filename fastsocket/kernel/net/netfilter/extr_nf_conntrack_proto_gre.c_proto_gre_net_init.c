
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netns_proto_gre {int keymap_list; int keymap_lock; } ;
struct net {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int kfree (struct netns_proto_gre*) ;
 struct netns_proto_gre* kmalloc (int,int ) ;
 int net_assign_generic (struct net*,int ,struct netns_proto_gre*) ;
 int proto_gre_net_id ;
 int rwlock_init (int *) ;

__attribute__((used)) static int proto_gre_net_init(struct net *net)
{
 struct netns_proto_gre *net_gre;
 int rv;

 net_gre = kmalloc(sizeof(struct netns_proto_gre), GFP_KERNEL);
 if (!net_gre)
  return -ENOMEM;
 rwlock_init(&net_gre->keymap_lock);
 INIT_LIST_HEAD(&net_gre->keymap_list);

 rv = net_assign_generic(net, proto_gre_net_id, net_gre);
 if (rv < 0)
  kfree(net_gre);
 return rv;
}
