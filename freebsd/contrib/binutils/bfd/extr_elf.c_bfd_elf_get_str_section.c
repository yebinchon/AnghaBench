
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int file_ptr ;
typedef int bfd_size_type ;
typedef char bfd_byte ;
typedef int bfd ;
struct TYPE_3__ {char* contents; int sh_size; int sh_offset; } ;
typedef TYPE_1__ Elf_Internal_Shdr ;


 int SEEK_SET ;
 char* bfd_alloc (int *,int) ;
 int bfd_bread (char*,int,int *) ;
 int bfd_error_file_truncated ;
 scalar_t__ bfd_error_system_call ;
 scalar_t__ bfd_get_error () ;
 scalar_t__ bfd_seek (int *,int ,int ) ;
 int bfd_set_error (int ) ;
 TYPE_1__** elf_elfsections (int *) ;
 unsigned int elf_numsections (int *) ;

char *
bfd_elf_get_str_section (bfd *abfd, unsigned int shindex)
{
  Elf_Internal_Shdr **i_shdrp;
  bfd_byte *shstrtab = ((void*)0);
  file_ptr offset;
  bfd_size_type shstrtabsize;

  i_shdrp = elf_elfsections (abfd);
  if (i_shdrp == 0
      || shindex >= elf_numsections (abfd)
      || i_shdrp[shindex] == 0)
    return ((void*)0);

  shstrtab = i_shdrp[shindex]->contents;
  if (shstrtab == ((void*)0))
    {

      offset = i_shdrp[shindex]->sh_offset;
      shstrtabsize = i_shdrp[shindex]->sh_size;



      if (shstrtabsize + 1 == 0
   || (shstrtab = bfd_alloc (abfd, shstrtabsize + 1)) == ((void*)0)
   || bfd_seek (abfd, offset, SEEK_SET) != 0)
 shstrtab = ((void*)0);
      else if (bfd_bread (shstrtab, shstrtabsize, abfd) != shstrtabsize)
 {
   if (bfd_get_error () != bfd_error_system_call)
     bfd_set_error (bfd_error_file_truncated);
   shstrtab = ((void*)0);
 }
      else
 shstrtab[shstrtabsize] = '\0';
      i_shdrp[shindex]->contents = shstrtab;
    }
  return (char *) shstrtab;
}
