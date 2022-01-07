
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct gre_protocol {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 size_t GREPROTO_MAX ;
 struct gre_protocol const* cmpxchg (struct gre_protocol const**,struct gre_protocol const*,int *) ;
 int * gre_proto ;
 int synchronize_rcu () ;

int gre_del_protocol(const struct gre_protocol *proto, u8 version)
{
 int ret;

 if (version >= GREPROTO_MAX)
  return -EINVAL;

 ret = (cmpxchg((const struct gre_protocol **)&gre_proto[version], proto, ((void*)0)) == proto) ?
  0 : -EBUSY;

 if (ret)
  return ret;

 synchronize_rcu();
 return 0;
}
