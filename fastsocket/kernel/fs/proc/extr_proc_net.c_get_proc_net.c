
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct inode {int dummy; } ;


 int PDE (struct inode const*) ;
 int PDE_NET (int ) ;
 struct net* maybe_get_net (int ) ;

__attribute__((used)) static struct net *get_proc_net(const struct inode *inode)
{
 return maybe_get_net(PDE_NET(PDE(inode)));
}
