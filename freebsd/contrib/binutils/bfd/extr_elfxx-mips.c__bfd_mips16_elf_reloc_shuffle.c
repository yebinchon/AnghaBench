
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_vma ;
typedef int bfd_byte ;
typedef scalar_t__ bfd_boolean ;
typedef int bfd ;


 int R_MIPS16_26 ;
 int R_MIPS16_GPREL ;
 int R_MIPS16_HI16 ;
 int R_MIPS16_LO16 ;
 int bfd_get_32 (int *,int *) ;
 int bfd_put_16 (int *,int,int *) ;

void
_bfd_mips16_elf_reloc_shuffle (bfd *abfd, int r_type,
          bfd_boolean jal_shuffle, bfd_byte *data)
{
  bfd_vma extend, insn, val;

  if (r_type != R_MIPS16_26 && r_type != R_MIPS16_GPREL
      && r_type != R_MIPS16_HI16 && r_type != R_MIPS16_LO16)
    return;

  val = bfd_get_32 (abfd, data);
  if (r_type == R_MIPS16_26)
    {
      if (jal_shuffle)
 {
   insn = val & 0xffff;
   extend = ((val >> 16) & 0xfc00) | ((val >> 11) & 0x3e0)
     | ((val >> 21) & 0x1f);
 }
      else
 {
   insn = val & 0xffff;
   extend = val >> 16;
 }
    }
  else
    {
      insn = ((val >> 11) & 0xffe0) | (val & 0x1f);
      extend = ((val >> 16) & 0xf800) | ((val >> 11) & 0x1f) | (val & 0x7e0);
    }
  bfd_put_16 (abfd, insn, data + 2);
  bfd_put_16 (abfd, extend, data);
}
