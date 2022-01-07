
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int src_mask; int size; int rightshift; int dst_mask; } ;
typedef TYPE_1__ reloc_howto_type ;
typedef int bfd_vma ;
typedef int bfd_signed_vma ;
typedef int bfd_byte ;
typedef int bfd ;






 int R_ARM_THM_CALL ;
 int bfd_get_16 (int *,int *) ;
 int bfd_get_32 (int *,int *) ;
 int bfd_put_16 (int *,int,int *) ;
 int bfd_put_32 (int *,int,int *) ;

__attribute__((used)) static void
arm_add_to_rel (bfd * abfd,
  bfd_byte * address,
  reloc_howto_type * howto,
  bfd_signed_vma increment)
{
  bfd_signed_vma addend;

  if (howto->type == R_ARM_THM_CALL)
    {
      int upper_insn, lower_insn;
      int upper, lower;

      upper_insn = bfd_get_16 (abfd, address);
      lower_insn = bfd_get_16 (abfd, address + 2);
      upper = upper_insn & 0x7ff;
      lower = lower_insn & 0x7ff;

      addend = (upper << 12) | (lower << 1);
      addend += increment;
      addend >>= 1;

      upper_insn = (upper_insn & 0xf800) | ((addend >> 11) & 0x7ff);
      lower_insn = (lower_insn & 0xf800) | (addend & 0x7ff);

      bfd_put_16 (abfd, (bfd_vma) upper_insn, address);
      bfd_put_16 (abfd, (bfd_vma) lower_insn, address + 2);
    }
  else
    {
      bfd_vma contents;

      contents = bfd_get_32 (abfd, address);


      addend = contents & howto->src_mask;
      if (addend & ((howto->src_mask + 1) >> 1))
 {
   bfd_signed_vma mask;

   mask = -1;
   mask &= ~ howto->src_mask;
   addend |= mask;
 }


      switch (howto->type)
 {
 default:
   addend += increment;
   break;

 case 129:
 case 128:
 case 131:
 case 130:
   addend <<= howto->size;
   addend += increment;




   addend >>= howto->rightshift;
   break;
 }

      contents = (contents & ~ howto->dst_mask) | (addend & howto->dst_mask);

      bfd_put_32 (abfd, contents, address);
    }
}
