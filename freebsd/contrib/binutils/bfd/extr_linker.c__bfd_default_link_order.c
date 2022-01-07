
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd_link_order {int type; } ;
struct bfd_link_info {int dummy; } ;
typedef int bfd_boolean ;
typedef int bfd ;
typedef int asection ;


 int FALSE ;
 int abort () ;





 int default_data_link_order (int *,struct bfd_link_info*,int *,struct bfd_link_order*) ;
 int default_indirect_link_order (int *,struct bfd_link_info*,int *,struct bfd_link_order*,int ) ;

bfd_boolean
_bfd_default_link_order (bfd *abfd,
    struct bfd_link_info *info,
    asection *sec,
    struct bfd_link_order *link_order)
{
  switch (link_order->type)
    {
    case 128:
    case 130:
    case 129:
    default:
      abort ();
    case 131:
      return default_indirect_link_order (abfd, info, sec, link_order,
       FALSE);
    case 132:
      return default_data_link_order (abfd, info, sec, link_order);
    }
}
