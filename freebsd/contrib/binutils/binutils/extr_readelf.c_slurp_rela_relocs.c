
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int r_addend; int r_info; int r_offset; } ;
struct TYPE_8__ {void* r_addend; void* r_info; void* r_offset; } ;
typedef int FILE ;
typedef TYPE_1__ Elf_Internal_Rela ;
typedef TYPE_2__ Elf64_External_Rela ;
typedef TYPE_2__ Elf32_External_Rela ;


 void* BYTE_GET (int ) ;
 int _ (char*) ;
 TYPE_1__* cmalloc (unsigned long,int) ;
 int error (int ) ;
 int free (TYPE_2__*) ;
 TYPE_2__* get_data (int *,int *,unsigned long,int,unsigned long,int ) ;
 scalar_t__ is_32bit_elf ;

__attribute__((used)) static int
slurp_rela_relocs (FILE *file,
     unsigned long rel_offset,
     unsigned long rel_size,
     Elf_Internal_Rela **relasp,
     unsigned long *nrelasp)
{
  Elf_Internal_Rela *relas;
  unsigned long nrelas;
  unsigned int i;

  if (is_32bit_elf)
    {
      Elf32_External_Rela *erelas;

      erelas = get_data (((void*)0), file, rel_offset, 1, rel_size, _("relocs"));
      if (!erelas)
 return 0;

      nrelas = rel_size / sizeof (Elf32_External_Rela);

      relas = cmalloc (nrelas, sizeof (Elf_Internal_Rela));

      if (relas == ((void*)0))
 {
   free (erelas);
   error (_("out of memory parsing relocs\n"));
   return 0;
 }

      for (i = 0; i < nrelas; i++)
 {
   relas[i].r_offset = BYTE_GET (erelas[i].r_offset);
   relas[i].r_info = BYTE_GET (erelas[i].r_info);
   relas[i].r_addend = BYTE_GET (erelas[i].r_addend);
 }

      free (erelas);
    }
  else
    {
      Elf64_External_Rela *erelas;

      erelas = get_data (((void*)0), file, rel_offset, 1, rel_size, _("relocs"));
      if (!erelas)
 return 0;

      nrelas = rel_size / sizeof (Elf64_External_Rela);

      relas = cmalloc (nrelas, sizeof (Elf_Internal_Rela));

      if (relas == ((void*)0))
 {
   free (erelas);
   error (_("out of memory parsing relocs\n"));
   return 0;
 }

      for (i = 0; i < nrelas; i++)
 {
   relas[i].r_offset = BYTE_GET (erelas[i].r_offset);
   relas[i].r_info = BYTE_GET (erelas[i].r_info);
   relas[i].r_addend = BYTE_GET (erelas[i].r_addend);
 }

      free (erelas);
    }
  *relasp = relas;
  *nrelasp = nrelas;
  return 1;
}
