
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;
typedef int Elf_Internal_Phdr ;
typedef int Elf_External_Phdr ;


 int bfd_bwrite (int *,int,int *) ;
 int elf_swap_phdr_out (int *,int const*,int *) ;

int
elf_write_out_phdrs (bfd *abfd,
       const Elf_Internal_Phdr *phdr,
       unsigned int count)
{
  while (count--)
    {
      Elf_External_Phdr extphdr;
      elf_swap_phdr_out (abfd, phdr, &extphdr);
      if (bfd_bwrite (&extphdr, sizeof (Elf_External_Phdr), abfd)
   != sizeof (Elf_External_Phdr))
 return -1;
      phdr++;
    }
  return 0;
}
