
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt6_info {int rt6i_flags; } ;


 int RTF_DEFAULT ;
 int RTF_GATEWAY ;

__attribute__((used)) static inline int addrconf_is_prefix_route(const struct rt6_info *rt)
{
 return ((rt->rt6i_flags & (RTF_GATEWAY | RTF_DEFAULT)) == 0);
}
