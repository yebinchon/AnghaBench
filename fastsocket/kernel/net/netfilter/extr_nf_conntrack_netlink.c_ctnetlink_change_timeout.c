
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct nlattr {int dummy; } ;
struct TYPE_3__ {scalar_t__ expires; } ;
struct nf_conn {TYPE_1__ timeout; } ;


 size_t CTA_TIMEOUT ;
 int ETIME ;
 int HZ ;
 int add_timer (TYPE_1__*) ;
 int del_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int nla_get_be32 (struct nlattr const* const) ;
 int ntohl (int ) ;

__attribute__((used)) static inline int
ctnetlink_change_timeout(struct nf_conn *ct, const struct nlattr * const cda[])
{
 u_int32_t timeout = ntohl(nla_get_be32(cda[CTA_TIMEOUT]));

 if (!del_timer(&ct->timeout))
  return -ETIME;

 ct->timeout.expires = jiffies + timeout * HZ;
 add_timer(&ct->timeout);

 return 0;
}
