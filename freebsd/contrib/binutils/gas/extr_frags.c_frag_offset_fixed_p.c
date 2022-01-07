
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ fr_type; int fr_offset; int fr_var; struct TYPE_4__* fr_next; scalar_t__ fr_fix; scalar_t__ fr_address; } ;
typedef TYPE_1__ fragS ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_boolean ;


 int FALSE ;
 int TRUE ;
 scalar_t__ rs_fill ;

bfd_boolean
frag_offset_fixed_p (const fragS *frag1, const fragS *frag2, bfd_vma *offset)
{
  const fragS *frag;
  bfd_vma off;



  off = frag1->fr_address - frag2->fr_address;
  if (frag1 == frag2)
    {
      *offset = off;
      return TRUE;
    }


  frag = frag1;
  while (frag->fr_type == rs_fill)
    {
      off += frag->fr_fix + frag->fr_offset * frag->fr_var;
      frag = frag->fr_next;
      if (frag == ((void*)0))
 break;
      if (frag == frag2)
 {
   *offset = off;
   return TRUE;
 }
    }


  off = frag1->fr_address - frag2->fr_address;
  frag = frag2;
  while (frag->fr_type == rs_fill)
    {
      off -= frag->fr_fix + frag->fr_offset * frag->fr_var;
      frag = frag->fr_next;
      if (frag == ((void*)0))
 break;
      if (frag == frag1)
 {
   *offset = off;
   return TRUE;
 }
    }

  return FALSE;
}
