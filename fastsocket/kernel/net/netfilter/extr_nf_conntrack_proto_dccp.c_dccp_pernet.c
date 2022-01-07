
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct dccp_net {int dummy; } ;


 int dccp_net_id ;
 struct dccp_net* net_generic (struct net*,int ) ;

__attribute__((used)) static inline struct dccp_net *dccp_pernet(struct net *net)
{
 return net_generic(net, dccp_net_id);
}
