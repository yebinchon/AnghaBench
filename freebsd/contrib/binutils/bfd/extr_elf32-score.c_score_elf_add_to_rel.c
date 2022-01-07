
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long type; int src_mask; unsigned long dst_mask; } ;
typedef TYPE_1__ reloc_howto_type ;
typedef int bfd_vma ;
typedef int bfd_signed_vma ;
typedef int bfd_byte ;
typedef int bfd ;
 int bfd_get_16 (int *,int *) ;
 void* bfd_get_32 (int *,int *) ;
 int bfd_put_16 (int *,int,int *) ;
 int bfd_put_32 (int *,int,int *) ;

__attribute__((used)) static void
score_elf_add_to_rel (bfd *abfd,
        bfd_byte *address,
        reloc_howto_type *howto,
        bfd_signed_vma increment)
{
  bfd_signed_vma addend;
  bfd_vma contents;
  unsigned long offset;
  unsigned long r_type = howto->type;
  unsigned long hi16_addend, hi16_offset, hi16_value, uvalue;

  contents = bfd_get_32 (abfd, address);

  addend = contents & howto->src_mask;
  if (addend & ((howto->src_mask + 1) >> 1))
    {
      bfd_signed_vma mask;

      mask = -1;
      mask &= ~howto->src_mask;
      addend |= mask;
    }

  switch (r_type)
    {
    case 128:
      offset =
        (((contents & howto->src_mask) & 0x3ff0000) >> 6) | ((contents & howto->src_mask) & 0x3ff);
      offset += increment;
      contents =
        (contents & ~howto->
         src_mask) | (((offset << 6) & howto->src_mask) & 0x3ff0000) | (offset & 0x3ff);
      bfd_put_32 (abfd, contents, address);
      break;
    case 130:
      break;
    case 129:
      hi16_addend = bfd_get_32 (abfd, address - 4);
      hi16_offset = ((((hi16_addend >> 16) & 0x3) << 15) | (hi16_addend & 0x7fff)) >> 1;
      offset = ((((contents >> 16) & 0x3) << 15) | (contents & 0x7fff)) >> 1;
      offset = (hi16_offset << 16) | (offset & 0xffff);
      uvalue = increment + offset;
      hi16_offset = (uvalue >> 16) << 1;
      hi16_value = (hi16_addend & (~(howto->dst_mask)))
        | (hi16_offset & 0x7fff) | ((hi16_offset << 1) & 0x30000);
      bfd_put_32 (abfd, hi16_value, address - 4);
      offset = (uvalue & 0xffff) << 1;
      contents = (contents & (~(howto->dst_mask))) | (offset & 0x7fff) | ((offset << 1) & 0x30000);
      bfd_put_32 (abfd, contents, address);
      break;
    case 131:
      offset =
        (((contents & howto->src_mask) >> 1) & 0x1ff8000) | ((contents & howto->src_mask) & 0x7fff);
      offset += increment;
      contents =
        (contents & ~howto->
         src_mask) | (((offset << 1) & howto->src_mask) & 0x3ff0000) | (offset & 0x7fff);
      bfd_put_32 (abfd, contents, address);
      break;
    case 133:

      contents = bfd_get_16 (abfd, address);
      offset = contents & howto->src_mask;
      offset += increment;
      contents = (contents & ~howto->src_mask) | (offset & howto->src_mask);
      bfd_put_16 (abfd, contents, address);

      break;
    case 132:

      contents = bfd_get_16 (abfd, address);
      offset = (contents & howto->src_mask) + ((increment >> 1) & 0xff);
      contents = (contents & (~howto->src_mask)) | (offset & howto->src_mask);
      bfd_put_16 (abfd, contents, address);

      break;
    default:
      addend += increment;
      contents = (contents & ~howto->dst_mask) | (addend & howto->dst_mask);
      bfd_put_32 (abfd, contents, address);
      break;
    }
}
