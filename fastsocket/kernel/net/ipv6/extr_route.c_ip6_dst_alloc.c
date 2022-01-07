
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt6_info {int dummy; } ;
struct dst_ops {int dummy; } ;


 scalar_t__ dst_alloc (struct dst_ops*) ;

__attribute__((used)) static inline struct rt6_info *ip6_dst_alloc(struct dst_ops *ops)
{
 return (struct rt6_info *)dst_alloc(ops);
}
