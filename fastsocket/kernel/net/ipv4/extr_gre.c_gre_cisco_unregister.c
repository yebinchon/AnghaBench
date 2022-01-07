
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gre_cisco_protocol {size_t priority; } ;


 int EINVAL ;
 struct gre_cisco_protocol* cmpxchg (struct gre_cisco_protocol**,struct gre_cisco_protocol*,int *) ;
 int * gre_cisco_proto_list ;
 int synchronize_net () ;

int gre_cisco_unregister(struct gre_cisco_protocol *del_proto)
{
 struct gre_cisco_protocol **proto = (struct gre_cisco_protocol **)
         &gre_cisco_proto_list[del_proto->priority];
 int ret;

 ret = (cmpxchg(proto, del_proto, ((void*)0)) == del_proto) ? 0 : -EINVAL;

 if (ret)
  return ret;

 synchronize_net();
 return 0;
}
