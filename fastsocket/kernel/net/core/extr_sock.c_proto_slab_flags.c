
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proto {int slab_flags; } ;


 int RHEL_EXTENDED_PROTO ;

__attribute__((used)) static int proto_slab_flags(const struct proto *prot)
{
 return prot->slab_flags & ~RHEL_EXTENDED_PROTO;
}
