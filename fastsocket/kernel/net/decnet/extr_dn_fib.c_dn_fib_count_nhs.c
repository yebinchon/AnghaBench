
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnexthop {scalar_t__ rtnh_len; } ;
struct rtattr {int dummy; } ;


 struct rtnexthop* RTA_DATA (struct rtattr*) ;
 int RTA_PAYLOAD (struct rtattr*) ;
 struct rtnexthop* RTNH_NEXT (struct rtnexthop*) ;

__attribute__((used)) static int dn_fib_count_nhs(struct rtattr *rta)
{
 int nhs = 0;
 struct rtnexthop *nhp = RTA_DATA(rta);
 int nhlen = RTA_PAYLOAD(rta);

 while(nhlen >= (int)sizeof(struct rtnexthop)) {
  if ((nhlen -= nhp->rtnh_len) < 0)
   return 0;
  nhs++;
  nhp = RTNH_NEXT(nhp);
 }

 return nhs;
}
