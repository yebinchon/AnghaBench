
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtable {struct in_device* idev; struct inet_peer* peer; } ;
struct inet_peer {int dummy; } ;
struct in_device {int dummy; } ;
struct dst_entry {int dummy; } ;


 int in_dev_put (struct in_device*) ;
 int inet_putpeer (struct inet_peer*) ;

__attribute__((used)) static void ipv4_dst_destroy(struct dst_entry *dst)
{
 struct rtable *rt = (struct rtable *) dst;
 struct inet_peer *peer = rt->peer;
 struct in_device *idev = rt->idev;

 if (peer) {
  rt->peer = ((void*)0);
  inet_putpeer(peer);
 }

 if (idev) {
  rt->idev = ((void*)0);
  in_dev_put(idev);
 }
}
