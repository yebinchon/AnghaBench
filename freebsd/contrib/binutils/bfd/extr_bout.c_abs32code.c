
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct bfd_link_info {int dummy; } ;
typedef unsigned int bfd_vma ;
typedef int bfd ;
typedef int asection ;
struct TYPE_4__ {int address; int * howto; } ;
typedef TYPE_1__ arelent ;


 unsigned int get_value (TYPE_1__*,struct bfd_link_info*,int *) ;
 int howto_reloc_abs32codeshrunk ;
 unsigned int output_addr (int *) ;
 int perform_slip (int *,int,int *,unsigned int) ;

__attribute__((used)) static int
abs32code (bfd *abfd,
    asection *input_section,
    arelent *r,
    unsigned int shrink,
    struct bfd_link_info *link_info)
{
  bfd_vma value = get_value (r, link_info, input_section);
  bfd_vma dot = output_addr (input_section) + r->address;
  bfd_vma gap;




  gap = value - (dot - shrink);

  if (-1 << 23 < (long)gap && (long)gap < 1 << 23)
    {


      r->howto = &howto_reloc_abs32codeshrunk;

      r->address -=4;


      shrink += 4 ;
      perform_slip (abfd, 4, input_section, r->address-shrink + 4);
    }

  return shrink;
}
