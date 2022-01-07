
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elf32_arm_link_hash_table {scalar_t__ byteswap_code; } ;
typedef int bfd_vma ;
typedef int bfd ;


 scalar_t__ bfd_little_endian (int *) ;
 int bfd_putb16 (int ,void*) ;
 int bfd_putl16 (int ,void*) ;

__attribute__((used)) static void
put_thumb_insn (struct elf32_arm_link_hash_table *htab,
        bfd * output_bfd, bfd_vma val, void * ptr)
{
    if (htab->byteswap_code != bfd_little_endian (output_bfd))
      bfd_putl16 (val, ptr);
    else
      bfd_putb16 (val, ptr);
}
