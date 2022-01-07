
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct ip6_flowlabel {int users; } ;
typedef int __be32 ;


 struct ip6_flowlabel* __fl_lookup (struct net*,int ) ;
 int atomic_inc (int *) ;
 int ip6_fl_lock ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

__attribute__((used)) static struct ip6_flowlabel *fl_lookup(struct net *net, __be32 label)
{
 struct ip6_flowlabel *fl;

 read_lock_bh(&ip6_fl_lock);
 fl = __fl_lookup(net, label);
 if (fl)
  atomic_inc(&fl->users);
 read_unlock_bh(&ip6_fl_lock);
 return fl;
}
