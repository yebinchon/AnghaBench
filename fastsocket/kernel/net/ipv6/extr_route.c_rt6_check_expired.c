
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt6_info {int rt6i_flags; int rt6i_expires; } ;


 int RTF_EXPIRES ;
 int jiffies ;
 scalar_t__ time_after (int ,int ) ;

__attribute__((used)) static __inline__ int rt6_check_expired(const struct rt6_info *rt)
{
 return (rt->rt6i_flags & RTF_EXPIRES &&
  time_after(jiffies, rt->rt6i_expires));
}
