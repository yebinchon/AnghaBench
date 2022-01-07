
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_7__ ;
typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;
typedef struct TYPE_26__ TYPE_13__ ;
typedef struct TYPE_25__ TYPE_10__ ;


struct TYPE_28__ {int type; } ;
struct TYPE_27__ {scalar_t__ offset; } ;
struct elf_link_hash_entry {TYPE_2__ root; int type; TYPE_1__ plt; } ;
struct elf32_arm_link_hash_table {int use_blx; int * splt; scalar_t__ byteswap_code; int * bfd_of_glue_owner; } ;
struct bfd_link_info {scalar_t__ relocatable; } ;
typedef scalar_t__ bfd_vma ;
struct TYPE_30__ {int r_info; } ;
typedef TYPE_4__ bfd_byte ;
typedef int bfd_boolean ;
struct TYPE_31__ {TYPE_6__* sections; } ;
typedef TYPE_5__ bfd ;
struct TYPE_32__ {scalar_t__ reloc_count; int flags; struct TYPE_32__* next; } ;
typedef TYPE_6__ asection ;
struct TYPE_33__ {unsigned long sh_info; } ;
struct TYPE_29__ {TYPE_4__* contents; } ;
struct TYPE_26__ {TYPE_4__* relocs; TYPE_3__ this_hdr; } ;
struct TYPE_25__ {TYPE_7__ symtab_hdr; } ;
typedef TYPE_7__ Elf_Internal_Shdr ;
typedef TYPE_4__ Elf_Internal_Rela ;


 int BFD_ASSERT (int ) ;
 unsigned long ELF32_R_SYM (int ) ;
 long ELF32_R_TYPE (int ) ;
 int ELF_ST_TYPE (int ) ;
 int FALSE ;





 int SEC_EXCLUDE ;
 int STT_ARM_TFUNC ;
 int TRUE ;
 int _ (char*) ;
 TYPE_4__* _bfd_elf_link_read_relocs (TYPE_5__*,TYPE_6__*,void*,TYPE_4__*,int ) ;
 int _bfd_error_handler (int ,TYPE_5__*) ;
 int abort () ;
 int bfd_big_endian (TYPE_5__*) ;
 int bfd_link_hash_undefweak ;
 int bfd_malloc_and_get_section (TYPE_5__*,TYPE_6__*,TYPE_4__**) ;
 int check_use_blx (struct elf32_arm_link_hash_table*) ;
 struct elf32_arm_link_hash_table* elf32_arm_hash_table (struct bfd_link_info*) ;
 TYPE_13__* elf_section_data (TYPE_6__*) ;
 scalar_t__* elf_sym_hashes (TYPE_5__*) ;
 TYPE_10__* elf_tdata (TYPE_5__*) ;
 int free (TYPE_4__*) ;
 int record_arm_to_thumb_glue (struct bfd_link_info*,struct elf_link_hash_entry*) ;
 int record_thumb_to_arm_glue (struct bfd_link_info*,struct elf_link_hash_entry*) ;

bfd_boolean
bfd_elf32_arm_process_before_allocation (bfd *abfd,
      struct bfd_link_info *link_info)
{
  Elf_Internal_Shdr *symtab_hdr;
  Elf_Internal_Rela *internal_relocs = ((void*)0);
  Elf_Internal_Rela *irel, *irelend;
  bfd_byte *contents = ((void*)0);

  asection *sec;
  struct elf32_arm_link_hash_table *globals;



  if (link_info->relocatable)
    return TRUE;



  globals = elf32_arm_hash_table (link_info);
  check_use_blx (globals);

  BFD_ASSERT (globals != ((void*)0));
  BFD_ASSERT (globals->bfd_of_glue_owner != ((void*)0));

  if (globals->byteswap_code && !bfd_big_endian (abfd))
    {
      _bfd_error_handler (_("%B: BE8 images only valid in big-endian mode."),
     abfd);
      return FALSE;
    }


  sec = abfd->sections;

  if (sec == ((void*)0))
    return TRUE;

  for (; sec != ((void*)0); sec = sec->next)
    {
      if (sec->reloc_count == 0)
 continue;

      if ((sec->flags & SEC_EXCLUDE) != 0)
 continue;

      symtab_hdr = &elf_tdata (abfd)->symtab_hdr;


      internal_relocs
 = _bfd_elf_link_read_relocs (abfd, sec, (void *) ((void*)0),
         (Elf_Internal_Rela *) ((void*)0), FALSE);

      if (internal_relocs == ((void*)0))
 goto error_return;

      irelend = internal_relocs + sec->reloc_count;
      for (irel = internal_relocs; irel < irelend; irel++)
 {
   long r_type;
   unsigned long r_index;

   struct elf_link_hash_entry *h;

   r_type = ELF32_R_TYPE (irel->r_info);
   r_index = ELF32_R_SYM (irel->r_info);


   if ( r_type != 130
       && r_type != 129
       && r_type != 132
       && r_type != 131
       && r_type != 128)
     continue;


   if (contents == ((void*)0))
     {

       if (elf_section_data (sec)->this_hdr.contents != ((void*)0))
  contents = elf_section_data (sec)->this_hdr.contents;
       else
  {

    if (! bfd_malloc_and_get_section (abfd, sec, &contents))
      goto error_return;
  }
     }


   h = ((void*)0);


   if (r_index < symtab_hdr->sh_info)
     continue;


   r_index -= symtab_hdr->sh_info;
   h = (struct elf_link_hash_entry *)
     elf_sym_hashes (abfd)[r_index];



   if (h == ((void*)0))
     continue;



   if (globals->splt != ((void*)0) && h->plt.offset != (bfd_vma) -1)
     continue;

   switch (r_type)
     {
     case 130:
     case 129:
     case 132:
     case 131:



       if (ELF_ST_TYPE(h->type) == STT_ARM_TFUNC
    && !(r_type == 132 && globals->use_blx))
  record_arm_to_thumb_glue (link_info, h);
       break;

     case 128:



       if (ELF_ST_TYPE (h->type) != STT_ARM_TFUNC && !globals->use_blx
    && h->root.type != bfd_link_hash_undefweak)
  record_thumb_to_arm_glue (link_info, h);
       break;

     default:
       abort ();
     }
 }

      if (contents != ((void*)0)
   && elf_section_data (sec)->this_hdr.contents != contents)
 free (contents);
      contents = ((void*)0);

      if (internal_relocs != ((void*)0)
   && elf_section_data (sec)->relocs != internal_relocs)
 free (internal_relocs);
      internal_relocs = ((void*)0);
    }

  return TRUE;

error_return:
  if (contents != ((void*)0)
      && elf_section_data (sec)->this_hdr.contents != contents)
    free (contents);
  if (internal_relocs != ((void*)0)
      && elf_section_data (sec)->relocs != internal_relocs)
    free (internal_relocs);

  return FALSE;
}
