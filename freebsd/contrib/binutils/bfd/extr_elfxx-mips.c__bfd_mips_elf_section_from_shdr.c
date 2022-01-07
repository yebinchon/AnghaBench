
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int flagword ;
typedef int elf_gp ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_13__ {int ri_gp_value; } ;
struct TYPE_12__ {int ri_gp_value; } ;
struct TYPE_11__ {int size; scalar_t__ kind; } ;
struct TYPE_10__ {int sh_type; int sh_size; int bfd_section; } ;
typedef TYPE_1__ Elf_Internal_Shdr ;
typedef TYPE_2__ Elf_Internal_Options ;
typedef int Elf_External_Options ;
typedef TYPE_3__ Elf64_Internal_RegInfo ;
typedef int Elf64_External_RegInfo ;
typedef TYPE_4__ Elf32_RegInfo ;
typedef int Elf32_External_RegInfo ;


 scalar_t__ ABI_64_P (int *) ;
 int CONST_STRNEQ (char const*,char*) ;
 int FALSE ;
 int MIPS_ELF_OPTIONS_SECTION_NAME (int *) ;
 int MIPS_ELF_OPTIONS_SECTION_NAME_P (char const*) ;
 scalar_t__ ODK_REGINFO ;
 int SEC_DEBUGGING ;
 int SEC_LINK_DUPLICATES_SAME_SIZE ;
 int SEC_LINK_ONCE ;
 int TRUE ;
 int _ (char*) ;
 int _bfd_elf_make_section_from_shdr (int *,TYPE_1__*,char const*,int) ;
 int _bfd_error_handler (int ,int *,int ,int) ;
 int bfd_get_section_contents (int *,int ,int *,int ,int) ;
 int bfd_get_section_flags (int *,int ) ;
 int * bfd_malloc (int) ;
 int bfd_mips_elf32_swap_reginfo_in (int *,int *,TYPE_4__*) ;
 int bfd_mips_elf64_swap_reginfo_in (int *,int *,TYPE_3__*) ;
 int bfd_mips_elf_swap_options_in (int *,int *,TYPE_2__*) ;
 int bfd_set_section_flags (int *,int ,int) ;
 int free (int *) ;
 int strcmp (char const*,char*) ;
 int stub1 (int ,int *,int ,int) ;

bfd_boolean
_bfd_mips_elf_section_from_shdr (bfd *abfd,
     Elf_Internal_Shdr *hdr,
     const char *name,
     int shindex)
{
  flagword flags = 0;






  switch (hdr->sh_type)
    {
    case 133:
      if (strcmp (name, ".liblist") != 0)
 return FALSE;
      break;
    case 132:
      if (strcmp (name, ".msym") != 0)
 return FALSE;
      break;
    case 140:
      if (strcmp (name, ".conflict") != 0)
 return FALSE;
      break;
    case 135:
      if (! CONST_STRNEQ (name, ".gptab."))
 return FALSE;
      break;
    case 128:
      if (strcmp (name, ".ucode") != 0)
 return FALSE;
      break;
    case 138:
      if (strcmp (name, ".mdebug") != 0)
 return FALSE;
      flags = SEC_DEBUGGING;
      break;
    case 130:
      if (strcmp (name, ".reginfo") != 0
   || hdr->sh_size != sizeof (Elf32_External_RegInfo))
 return FALSE;
      flags = (SEC_LINK_ONCE | SEC_LINK_DUPLICATES_SAME_SIZE);
      break;
    case 134:
      if (strcmp (name, ".MIPS.interfaces") != 0)
 return FALSE;
      break;
    case 139:
      if (! CONST_STRNEQ (name, ".MIPS.content"))
 return FALSE;
      break;
    case 131:
      if (!MIPS_ELF_OPTIONS_SECTION_NAME_P (name))
 return FALSE;
      break;
    case 137:
      if (! CONST_STRNEQ (name, ".debug_"))
 return FALSE;
      break;
    case 129:
      if (strcmp (name, ".MIPS.symlib") != 0)
 return FALSE;
      break;
    case 136:
      if (! CONST_STRNEQ (name, ".MIPS.events")
   && ! CONST_STRNEQ (name, ".MIPS.post_rel"))
 return FALSE;
      break;
    default:
      break;
    }

  if (! _bfd_elf_make_section_from_shdr (abfd, hdr, name, shindex))
    return FALSE;

  if (flags)
    {
      if (! bfd_set_section_flags (abfd, hdr->bfd_section,
       (bfd_get_section_flags (abfd,
          hdr->bfd_section)
        | flags)))
 return FALSE;
    }







  if (hdr->sh_type == 130)
    {
      Elf32_External_RegInfo ext;
      Elf32_RegInfo s;

      if (! bfd_get_section_contents (abfd, hdr->bfd_section,
          &ext, 0, sizeof ext))
 return FALSE;
      bfd_mips_elf32_swap_reginfo_in (abfd, &ext, &s);
      elf_gp (abfd) = s.ri_gp_value;
    }





  if (hdr->sh_type == 131)
    {
      bfd_byte *contents, *l, *lend;

      contents = bfd_malloc (hdr->sh_size);
      if (contents == ((void*)0))
 return FALSE;
      if (! bfd_get_section_contents (abfd, hdr->bfd_section, contents,
          0, hdr->sh_size))
 {
   free (contents);
   return FALSE;
 }
      l = contents;
      lend = contents + hdr->sh_size;
      while (l + sizeof (Elf_External_Options) <= lend)
 {
   Elf_Internal_Options intopt;

   bfd_mips_elf_swap_options_in (abfd, (Elf_External_Options *) l,
     &intopt);
   if (intopt.size < sizeof (Elf_External_Options))
     {
       (*_bfd_error_handler)
  (_("%B: Warning: bad `%s' option size %u smaller than its header"),
  abfd, MIPS_ELF_OPTIONS_SECTION_NAME (abfd), intopt.size);
       break;
     }
   if (ABI_64_P (abfd) && intopt.kind == ODK_REGINFO)
     {
       Elf64_Internal_RegInfo intreg;

       bfd_mips_elf64_swap_reginfo_in
  (abfd,
   ((Elf64_External_RegInfo *)
    (l + sizeof (Elf_External_Options))),
   &intreg);
       elf_gp (abfd) = intreg.ri_gp_value;
     }
   else if (intopt.kind == ODK_REGINFO)
     {
       Elf32_RegInfo intreg;

       bfd_mips_elf32_swap_reginfo_in
  (abfd,
   ((Elf32_External_RegInfo *)
    (l + sizeof (Elf_External_Options))),
   &intreg);
       elf_gp (abfd) = intreg.ri_gp_value;
     }
   l += intopt.size;
 }
      free (contents);
    }

  return TRUE;
}
