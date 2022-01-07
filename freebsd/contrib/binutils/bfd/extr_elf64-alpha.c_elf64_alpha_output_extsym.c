
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_12__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct extsym_info {scalar_t__ failed; int swap; int debug; int abfd; TYPE_3__* info; } ;
struct TYPE_23__ {scalar_t__ sc; scalar_t__ value; int index; scalar_t__ reserved; int st; } ;
struct TYPE_14__ {int ifd; TYPE_9__ asym; scalar_t__ reserved; scalar_t__ weakext; scalar_t__ cobol_main; scalar_t__ jmptbl; } ;
struct TYPE_18__ {int string; } ;
struct TYPE_19__ {scalar_t__ value; TYPE_10__* section; } ;
struct TYPE_15__ {scalar_t__ size; } ;
struct TYPE_16__ {scalar_t__ link; } ;
struct TYPE_20__ {TYPE_5__ def; TYPE_1__ c; TYPE_2__ i; } ;
struct TYPE_21__ {scalar_t__ type; TYPE_4__ root; TYPE_6__ u; } ;
struct TYPE_22__ {int indx; TYPE_7__ root; int ref_regular; int def_regular; scalar_t__ ref_dynamic; scalar_t__ def_dynamic; } ;
struct alpha_elf_link_hash_entry {TYPE_12__ esym; TYPE_8__ root; } ;
typedef scalar_t__ bfd_boolean ;
struct TYPE_13__ {scalar_t__ vma; scalar_t__ output_offset; struct TYPE_13__* output_section; int owner; } ;
typedef TYPE_10__ asection ;
struct TYPE_17__ {scalar_t__ strip; int keep_hash; } ;
typedef scalar_t__ PTR ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int bfd_ecoff_debug_one_external (int ,int ,int ,int ,TYPE_12__*) ;
 int * bfd_hash_lookup (int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ bfd_link_hash_common ;
 scalar_t__ bfd_link_hash_defined ;
 scalar_t__ bfd_link_hash_defweak ;
 scalar_t__ bfd_link_hash_new ;
 scalar_t__ bfd_link_hash_warning ;
 char* bfd_section_name (int ,TYPE_10__*) ;
 int ifdNil ;
 int indexNil ;
 void* scAbs ;
 void* scBss ;
 scalar_t__ scCommon ;
 scalar_t__ scData ;
 scalar_t__ scFini ;
 scalar_t__ scInit ;
 scalar_t__ scRData ;
 void* scSBss ;
 scalar_t__ scSCommon ;
 scalar_t__ scSData ;
 scalar_t__ scText ;
 scalar_t__ scUndefined ;
 int stGlobal ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strip_all ;
 scalar_t__ strip_some ;

__attribute__((used)) static bfd_boolean
elf64_alpha_output_extsym (struct alpha_elf_link_hash_entry *h, PTR data)
{
  struct extsym_info *einfo = (struct extsym_info *) data;
  bfd_boolean strip;
  asection *sec, *output_section;

  if (h->root.root.type == bfd_link_hash_warning)
    h = (struct alpha_elf_link_hash_entry *) h->root.root.u.i.link;

  if (h->root.indx == -2)
    strip = FALSE;
  else if ((h->root.def_dynamic
     || h->root.ref_dynamic
     || h->root.root.type == bfd_link_hash_new)
    && !h->root.def_regular
    && !h->root.ref_regular)
    strip = TRUE;
  else if (einfo->info->strip == strip_all
    || (einfo->info->strip == strip_some
        && bfd_hash_lookup (einfo->info->keep_hash,
       h->root.root.root.string,
       FALSE, FALSE) == ((void*)0)))
    strip = TRUE;
  else
    strip = FALSE;

  if (strip)
    return TRUE;

  if (h->esym.ifd == -2)
    {
      h->esym.jmptbl = 0;
      h->esym.cobol_main = 0;
      h->esym.weakext = 0;
      h->esym.reserved = 0;
      h->esym.ifd = ifdNil;
      h->esym.asym.value = 0;
      h->esym.asym.st = stGlobal;

      if (h->root.root.type != bfd_link_hash_defined
   && h->root.root.type != bfd_link_hash_defweak)
 h->esym.asym.sc = scAbs;
      else
 {
   const char *name;

   sec = h->root.root.u.def.section;
   output_section = sec->output_section;



   if (output_section == ((void*)0))
     h->esym.asym.sc = scUndefined;
   else
     {
       name = bfd_section_name (output_section->owner, output_section);

       if (strcmp (name, ".text") == 0)
  h->esym.asym.sc = scText;
       else if (strcmp (name, ".data") == 0)
  h->esym.asym.sc = scData;
       else if (strcmp (name, ".sdata") == 0)
  h->esym.asym.sc = scSData;
       else if (strcmp (name, ".rodata") == 0
         || strcmp (name, ".rdata") == 0)
  h->esym.asym.sc = scRData;
       else if (strcmp (name, ".bss") == 0)
  h->esym.asym.sc = scBss;
       else if (strcmp (name, ".sbss") == 0)
  h->esym.asym.sc = scSBss;
       else if (strcmp (name, ".init") == 0)
  h->esym.asym.sc = scInit;
       else if (strcmp (name, ".fini") == 0)
  h->esym.asym.sc = scFini;
       else
  h->esym.asym.sc = scAbs;
     }
 }

      h->esym.asym.reserved = 0;
      h->esym.asym.index = indexNil;
    }

  if (h->root.root.type == bfd_link_hash_common)
    h->esym.asym.value = h->root.root.u.c.size;
  else if (h->root.root.type == bfd_link_hash_defined
    || h->root.root.type == bfd_link_hash_defweak)
    {
      if (h->esym.asym.sc == scCommon)
 h->esym.asym.sc = scBss;
      else if (h->esym.asym.sc == scSCommon)
 h->esym.asym.sc = scSBss;

      sec = h->root.root.u.def.section;
      output_section = sec->output_section;
      if (output_section != ((void*)0))
 h->esym.asym.value = (h->root.root.u.def.value
         + sec->output_offset
         + output_section->vma);
      else
 h->esym.asym.value = 0;
    }

  if (! bfd_ecoff_debug_one_external (einfo->abfd, einfo->debug, einfo->swap,
          h->root.root.root.string,
          &h->esym))
    {
      einfo->failed = TRUE;
      return FALSE;
    }

  return TRUE;
}
