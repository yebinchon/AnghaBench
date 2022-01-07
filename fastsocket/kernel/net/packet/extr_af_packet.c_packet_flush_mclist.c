
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct packet_sock {struct packet_mclist* mclist; } ;
struct packet_mclist {int ifindex; struct packet_mclist* next; } ;
struct net_device {int dummy; } ;


 struct net_device* dev_get_by_index (int ,int ) ;
 int dev_put (struct net_device*) ;
 int kfree (struct packet_mclist*) ;
 int packet_dev_mc (struct net_device*,struct packet_mclist*,int) ;
 struct packet_sock* pkt_sk (struct sock*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int sock_net (struct sock*) ;

__attribute__((used)) static void packet_flush_mclist(struct sock *sk)
{
 struct packet_sock *po = pkt_sk(sk);
 struct packet_mclist *ml;

 if (!po->mclist)
  return;

 rtnl_lock();
 while ((ml = po->mclist) != ((void*)0)) {
  struct net_device *dev;

  po->mclist = ml->next;
  dev = dev_get_by_index(sock_net(sk), ml->ifindex);
  if (dev != ((void*)0)) {
   packet_dev_mc(dev, ml, -1);
   dev_put(dev);
  }
  kfree(ml);
 }
 rtnl_unlock();
}
