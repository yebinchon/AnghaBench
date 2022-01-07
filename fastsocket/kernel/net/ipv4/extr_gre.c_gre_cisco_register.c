
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gre_cisco_protocol {size_t priority; } ;


 int EBUSY ;
 int * cmpxchg (struct gre_cisco_protocol**,int *,struct gre_cisco_protocol*) ;
 int * gre_cisco_proto_list ;

int gre_cisco_register(struct gre_cisco_protocol *newp)
{
 struct gre_cisco_protocol **proto = (struct gre_cisco_protocol **)
         &gre_cisco_proto_list[newp->priority];

 return (cmpxchg(proto, ((void*)0), newp) == ((void*)0)) ? 0 : -EBUSY;
}
