
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netns_proto_gre {int dummy; } ;
struct net {int dummy; } ;


 int kfree (struct netns_proto_gre*) ;
 struct netns_proto_gre* net_generic (struct net*,int ) ;
 int nf_ct_gre_keymap_flush (struct net*) ;
 int proto_gre_net_id ;

__attribute__((used)) static void proto_gre_net_exit(struct net *net)
{
 struct netns_proto_gre *net_gre = net_generic(net, proto_gre_net_id);

 nf_ct_gre_keymap_flush(net);
 kfree(net_gre);
}
