
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ arch; } ;
typedef TYPE_1__ bfd_arch_info_type ;


 int BFD_ASSERT (int) ;

 TYPE_1__ const* bfd_default_compatible (TYPE_1__ const*,TYPE_1__ const*) ;

__attribute__((used)) static const bfd_arch_info_type *
spu_compatible (const bfd_arch_info_type *a, const bfd_arch_info_type *b)
{
  BFD_ASSERT (a->arch == 128);
  switch (b->arch)
    {
    default:
      return ((void*)0);
    case 128:
      return bfd_default_compatible (a, b);
    }

}
