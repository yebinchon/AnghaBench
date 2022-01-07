
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnexthop {int dummy; } ;
struct rtmsg {int dummy; } ;
struct fib_info {int fib_nhs; } ;


 int NLMSG_ALIGN (int) ;
 size_t RTAX_MAX ;
 int nla_total_size (size_t) ;

__attribute__((used)) static inline size_t fib_nlmsg_size(struct fib_info *fi)
{
 size_t payload = NLMSG_ALIGN(sizeof(struct rtmsg))
    + nla_total_size(4)
    + nla_total_size(4)
    + nla_total_size(4)
    + nla_total_size(4);


 payload += nla_total_size((RTAX_MAX * nla_total_size(4)));

 if (fi->fib_nhs) {



  size_t nhsize = nla_total_size(sizeof(struct rtnexthop));


  nhsize += 2 * nla_total_size(4);


  payload += nla_total_size(fi->fib_nhs * nhsize);
 }

 return payload;
}
