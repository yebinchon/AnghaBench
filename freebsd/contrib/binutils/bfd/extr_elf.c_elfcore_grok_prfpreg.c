
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_boolean ;
typedef int bfd ;
typedef int Elf_Internal_Note ;


 int elfcore_make_note_pseudosection (int *,char*,int *) ;

__attribute__((used)) static bfd_boolean
elfcore_grok_prfpreg (bfd *abfd, Elf_Internal_Note *note)
{
  return elfcore_make_note_pseudosection (abfd, ".reg2", note);
}
