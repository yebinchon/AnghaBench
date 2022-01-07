
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* section; } ;
struct TYPE_12__ {TYPE_3__ indirect; } ;
struct bfd_link_order {scalar_t__ type; TYPE_4__ u; } ;
struct bfd_link_info {int dummy; } ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
struct TYPE_13__ {TYPE_1__* xvec; } ;
typedef TYPE_5__ bfd ;
typedef int asymbol ;
struct TYPE_10__ {TYPE_5__* owner; } ;
struct TYPE_9__ {int * (* _bfd_get_relocated_section_contents ) (TYPE_5__*,struct bfd_link_info*,struct bfd_link_order*,int *,int ,int **) ;} ;


 scalar_t__ bfd_indirect_link_order ;
 int * stub1 (TYPE_5__*,struct bfd_link_info*,struct bfd_link_order*,int *,int ,int **) ;

bfd_byte *
bfd_get_relocated_section_contents (bfd *abfd,
        struct bfd_link_info *link_info,
        struct bfd_link_order *link_order,
        bfd_byte *data,
        bfd_boolean relocatable,
        asymbol **symbols)
{
  bfd *abfd2;
  bfd_byte *(*fn) (bfd *, struct bfd_link_info *, struct bfd_link_order *,
     bfd_byte *, bfd_boolean, asymbol **);

  if (link_order->type == bfd_indirect_link_order)
    {
      abfd2 = link_order->u.indirect.section->owner;
      if (abfd2 == ((void*)0))
 abfd2 = abfd;
    }
  else
    abfd2 = abfd;

  fn = abfd2->xvec->_bfd_get_relocated_section_contents;

  return (*fn) (abfd, link_info, link_order, data, relocatable, symbols);
}
