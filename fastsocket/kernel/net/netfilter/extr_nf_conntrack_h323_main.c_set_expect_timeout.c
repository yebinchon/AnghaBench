
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ expires; } ;
struct nf_conntrack_expect {TYPE_1__ timeout; } ;


 unsigned int HZ ;
 int add_timer (TYPE_1__*) ;
 int del_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;

__attribute__((used)) static int set_expect_timeout(struct nf_conntrack_expect *exp,
         unsigned timeout)
{
 if (!exp || !del_timer(&exp->timeout))
  return 0;

 exp->timeout.expires = jiffies + timeout * HZ;
 add_timer(&exp->timeout);

 return 1;
}
