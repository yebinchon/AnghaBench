
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct gre_protocol {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 size_t GREPROTO_MAX ;
 int * cmpxchg (struct gre_protocol const**,int *,struct gre_protocol const*) ;
 int * gre_proto ;

int gre_add_protocol(const struct gre_protocol *proto, u8 version)
{
 if (version >= GREPROTO_MAX)
  return -EINVAL;

 return (cmpxchg((const struct gre_protocol **)&gre_proto[version], ((void*)0), proto) == ((void*)0)) ?
  0 : -EBUSY;
}
