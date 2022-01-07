
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int value; TYPE_2__* section; } ;
struct TYPE_12__ {TYPE_3__ def; } ;
struct TYPE_13__ {TYPE_4__ u; } ;
struct coff_link_hash_entry {TYPE_5__ root; } ;
struct coff_final_link_info {struct bfd_link_info* info; } ;
struct bfd_link_info {int dummy; } ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_15__ {int ImageBase; TYPE_6__* DataDirectory; } ;
struct TYPE_16__ {TYPE_7__ pe_opthdr; } ;
struct TYPE_14__ {int VirtualAddress; int Size; } ;
struct TYPE_10__ {int output_offset; TYPE_1__* output_section; } ;
struct TYPE_9__ {int vma; } ;


 int FALSE ;
 size_t PE_IMPORT_ADDRESS_TABLE ;
 size_t PE_IMPORT_TABLE ;
 size_t PE_TLS_TABLE ;
 int TRUE ;
 int _ (char*) ;
 int _bfd_error_handler (int ,int *) ;
 int coff_hash_table (struct bfd_link_info*) ;
 struct coff_link_hash_entry* coff_link_hash_lookup (int ,char*,int ,int ,int ) ;
 TYPE_8__* pe_data (int *) ;

bfd_boolean
_bfd_XXi_final_link_postscript (bfd * abfd, struct coff_final_link_info *pfinfo)
{
  struct coff_link_hash_entry *h1;
  struct bfd_link_info *info = pfinfo->info;
  bfd_boolean result = TRUE;
  h1 = coff_link_hash_lookup (coff_hash_table (info),
         ".idata$2", FALSE, FALSE, TRUE);
  if (h1 != ((void*)0))
    {



      if (h1->root.u.def.section != ((void*)0)
   && h1->root.u.def.section->output_section != ((void*)0))
 pe_data (abfd)->pe_opthdr.DataDirectory[PE_IMPORT_TABLE].VirtualAddress =
   (h1->root.u.def.value
    + h1->root.u.def.section->output_section->vma
    + h1->root.u.def.section->output_offset);
      else
 {
   _bfd_error_handler
     (_("%B: unable to fill in DataDictionary[1] because .idata$2 is missing"),
      abfd);
   result = FALSE;
 }

      h1 = coff_link_hash_lookup (coff_hash_table (info),
      ".idata$4", FALSE, FALSE, TRUE);
      if (h1 != ((void*)0)
   && h1->root.u.def.section != ((void*)0)
   && h1->root.u.def.section->output_section != ((void*)0))
 pe_data (abfd)->pe_opthdr.DataDirectory[PE_IMPORT_TABLE].Size =
   ((h1->root.u.def.value
     + h1->root.u.def.section->output_section->vma
     + h1->root.u.def.section->output_offset)
    - pe_data (abfd)->pe_opthdr.DataDirectory[PE_IMPORT_TABLE].VirtualAddress);
      else
 {
   _bfd_error_handler
     (_("%B: unable to fill in DataDictionary[1] because .idata$4 is missing"),
      abfd);
   result = FALSE;
 }



      h1 = coff_link_hash_lookup (coff_hash_table (info),
      ".idata$5", FALSE, FALSE, TRUE);
      if (h1 != ((void*)0)
   && h1->root.u.def.section != ((void*)0)
   && h1->root.u.def.section->output_section != ((void*)0))
 pe_data (abfd)->pe_opthdr.DataDirectory[PE_IMPORT_ADDRESS_TABLE].VirtualAddress =
   (h1->root.u.def.value
    + h1->root.u.def.section->output_section->vma
    + h1->root.u.def.section->output_offset);
      else
 {
   _bfd_error_handler
     (_("%B: unable to fill in DataDictionary[12] because .idata$5 is missing"),
      abfd);
   result = FALSE;
 }

      h1 = coff_link_hash_lookup (coff_hash_table (info),
      ".idata$6", FALSE, FALSE, TRUE);
      if (h1 != ((void*)0)
   && h1->root.u.def.section != ((void*)0)
   && h1->root.u.def.section->output_section != ((void*)0))
 pe_data (abfd)->pe_opthdr.DataDirectory[PE_IMPORT_ADDRESS_TABLE].Size =
   ((h1->root.u.def.value
     + h1->root.u.def.section->output_section->vma
     + h1->root.u.def.section->output_offset)
    - pe_data (abfd)->pe_opthdr.DataDirectory[PE_IMPORT_ADDRESS_TABLE].VirtualAddress);
      else
 {
   _bfd_error_handler
     (_("%B: unable to fill in DataDictionary[PE_IMPORT_ADDRESS_TABLE (12)] because .idata$6 is missing"),
      abfd);
   result = FALSE;
 }
    }

  h1 = coff_link_hash_lookup (coff_hash_table (info),
         "__tls_used", FALSE, FALSE, TRUE);
  if (h1 != ((void*)0))
    {
      if (h1->root.u.def.section != ((void*)0)
   && h1->root.u.def.section->output_section != ((void*)0))
 pe_data (abfd)->pe_opthdr.DataDirectory[PE_TLS_TABLE].VirtualAddress =
   (h1->root.u.def.value
    + h1->root.u.def.section->output_section->vma
    + h1->root.u.def.section->output_offset
    - pe_data (abfd)->pe_opthdr.ImageBase);
      else
 {
   _bfd_error_handler
     (_("%B: unable to fill in DataDictionary[9] because __tls_used is missing"),
      abfd);
   result = FALSE;
 }

      pe_data (abfd)->pe_opthdr.DataDirectory[PE_TLS_TABLE].Size = 0x18;
    }




  return result;
}
