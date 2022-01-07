
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proto {int slab_flags; int rhel_flags; } ;


 int RHEL_EXTENDED_PROTO ;

__attribute__((used)) static bool proto_has_rhel_ext(const struct proto *prot, int flag)
{
 return (prot->slab_flags & RHEL_EXTENDED_PROTO) &&
        (prot->rhel_flags & flag);
}
