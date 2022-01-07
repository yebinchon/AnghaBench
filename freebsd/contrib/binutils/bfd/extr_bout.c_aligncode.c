
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int bfd_vma ;
typedef int bfd ;
typedef int asection ;
struct TYPE_5__ {int address; int addend; TYPE_2__* howto; } ;
typedef TYPE_1__ arelent ;
struct TYPE_6__ {int size; } ;


 TYPE_2__* howto_align_table ;
 TYPE_2__* howto_done_align_table ;
 int output_addr (int *) ;
 int perform_slip (int *,unsigned int,int *,int) ;

__attribute__((used)) static int
aligncode (bfd *abfd,
    asection *input_section,
    arelent *r,
    unsigned int shrink)
{
  bfd_vma dot = output_addr (input_section) + r->address;
  bfd_vma gap;
  bfd_vma old_end;
  bfd_vma new_end;
  unsigned int shrink_delta;
  int size = r->howto->size;






  old_end = ((dot + size ) & ~size) + size+1;


  new_end = ((dot - shrink + size) & ~size);


  gap = old_end - ((dot + size) & ~size);

  shrink_delta = (old_end - new_end) - shrink;

  if (shrink_delta)
    {

      r->howto = howto_done_align_table + (r->howto - howto_align_table);



      r->addend = old_end - dot + r->address;


      perform_slip (abfd, shrink_delta, input_section, r->address - shrink);
      shrink += shrink_delta;
    }

  return shrink;
}
