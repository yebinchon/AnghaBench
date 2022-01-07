
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct nf_conntrack_expect {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int
ctnetlink_change_expect(struct nf_conntrack_expect *x,
   const struct nlattr * const cda[])
{
 return -EOPNOTSUPP;
}
