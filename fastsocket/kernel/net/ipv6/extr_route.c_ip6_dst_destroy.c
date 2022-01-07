
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt6_info {struct inet6_dev* rt6i_idev; } ;
struct inet6_dev {int dummy; } ;
struct dst_entry {int dummy; } ;


 int in6_dev_put (struct inet6_dev*) ;

__attribute__((used)) static void ip6_dst_destroy(struct dst_entry *dst)
{
 struct rt6_info *rt = (struct rt6_info *)dst;
 struct inet6_dev *idev = rt->rt6i_idev;

 if (idev != ((void*)0)) {
  rt->rt6i_idev = ((void*)0);
  in6_dev_put(idev);
 }
}
