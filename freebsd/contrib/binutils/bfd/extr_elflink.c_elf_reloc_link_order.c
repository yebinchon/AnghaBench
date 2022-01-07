
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_40__ TYPE_9__ ;
typedef struct TYPE_39__ TYPE_8__ ;
typedef struct TYPE_38__ TYPE_7__ ;
typedef struct TYPE_37__ TYPE_6__ ;
typedef struct TYPE_36__ TYPE_5__ ;
typedef struct TYPE_35__ TYPE_4__ ;
typedef struct TYPE_34__ TYPE_3__ ;
typedef struct TYPE_33__ TYPE_2__ ;
typedef struct TYPE_32__ TYPE_21__ ;
typedef struct TYPE_31__ TYPE_1__ ;
typedef struct TYPE_30__ TYPE_17__ ;
typedef struct TYPE_29__ TYPE_14__ ;
typedef struct TYPE_28__ TYPE_13__ ;
typedef struct TYPE_27__ TYPE_12__ ;
typedef struct TYPE_26__ TYPE_11__ ;
typedef struct TYPE_25__ TYPE_10__ ;


struct TYPE_31__ {TYPE_12__* section; } ;
struct TYPE_33__ {TYPE_1__ def; } ;
struct TYPE_34__ {scalar_t__ type; TYPE_2__ u; } ;
struct elf_link_hash_entry {int indx; TYPE_3__ root; } ;
struct elf_backend_data {TYPE_10__* s; } ;
struct TYPE_38__ {TYPE_6__* p; } ;
struct TYPE_39__ {TYPE_7__ reloc; } ;
struct bfd_link_order {scalar_t__ type; scalar_t__ offset; TYPE_8__ u; } ;
struct bfd_link_info {int relocatable; TYPE_9__* callbacks; } ;
struct TYPE_26__ {int type; int name; scalar_t__ partial_inplace; } ;
typedef TYPE_11__ reloc_howto_type ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_size_type ;
typedef int bfd_reloc_status_type ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_27__ {scalar_t__ output_offset; scalar_t__ vma; TYPE_4__* output_section; } ;
typedef TYPE_12__ asection ;
struct TYPE_40__ {int (* reloc_overflow ) (struct bfd_link_info*,int *,char const*,int ,scalar_t__,int *,int *,scalar_t__) ;int (* unattached_reloc ) (struct bfd_link_info*,char*,int *,int *,int ) ;} ;
struct TYPE_36__ {char* name; TYPE_21__* section; } ;
struct TYPE_37__ {scalar_t__ addend; TYPE_5__ u; int reloc; } ;
struct TYPE_35__ {long target_index; scalar_t__ vma; } ;
struct TYPE_32__ {long target_index; } ;
struct TYPE_28__ {scalar_t__ sh_type; int * contents; } ;
struct TYPE_30__ {int rel_count; int rel_count2; TYPE_13__ rel_hdr; struct elf_link_hash_entry** rel_hashes; } ;
struct TYPE_29__ {scalar_t__ r_addend; scalar_t__ r_info; scalar_t__ r_offset; } ;
struct TYPE_25__ {unsigned int int_rels_per_ext_rel; int arch_size; int sizeof_rel; int sizeof_rela; int (* swap_reloca_out ) (int *,TYPE_14__*,int *) ;int (* swap_reloc_out ) (int *,TYPE_14__*,int *) ;} ;
typedef TYPE_13__ Elf_Internal_Shdr ;
typedef TYPE_14__ Elf_Internal_Rela ;


 int BFD_ASSERT (int) ;
 scalar_t__ ELF32_R_INFO (long,int ) ;
 scalar_t__ ELF64_R_INFO (long,int ) ;
 int FALSE ;
 int MAX_INT_RELS_PER_EXT_REL ;
 scalar_t__ SHT_REL ;
 int TRUE ;
 int _bfd_relocate_contents (TYPE_11__*,int *,scalar_t__,int *) ;
 int abort () ;
 int bfd_error_bad_value ;
 int bfd_get_reloc_size (TYPE_11__*) ;
 scalar_t__ bfd_link_hash_defined ;
 scalar_t__ bfd_link_hash_defweak ;



 TYPE_11__* bfd_reloc_type_lookup (int *,int ) ;
 char* bfd_section_name (int *,TYPE_21__*) ;
 scalar_t__ bfd_section_reloc_link_order ;
 int bfd_set_error (int ) ;
 int bfd_set_section_contents (int *,TYPE_12__*,int *,scalar_t__,int ) ;
 scalar_t__ bfd_wrapped_link_hash_lookup (int *,struct bfd_link_info*,char*,int ,int ,int ) ;
 int * bfd_zmalloc (int ) ;
 TYPE_17__* elf_section_data (TYPE_12__*) ;
 int free (int *) ;
 struct elf_backend_data* get_elf_backend_data (int *) ;
 int stub1 (struct bfd_link_info*,char*,int *,int *,int ) ;
 int stub2 (struct bfd_link_info*,int *,char const*,int ,scalar_t__,int *,int *,scalar_t__) ;
 int stub3 (int *,TYPE_14__*,int *) ;
 int stub4 (int *,TYPE_14__*,int *) ;

__attribute__((used)) static bfd_boolean
elf_reloc_link_order (bfd *output_bfd,
        struct bfd_link_info *info,
        asection *output_section,
        struct bfd_link_order *link_order)
{
  reloc_howto_type *howto;
  long indx;
  bfd_vma offset;
  bfd_vma addend;
  struct elf_link_hash_entry **rel_hash_ptr;
  Elf_Internal_Shdr *rel_hdr;
  const struct elf_backend_data *bed = get_elf_backend_data (output_bfd);
  Elf_Internal_Rela irel[MAX_INT_RELS_PER_EXT_REL];
  bfd_byte *erel;
  unsigned int i;

  howto = bfd_reloc_type_lookup (output_bfd, link_order->u.reloc.p->reloc);
  if (howto == ((void*)0))
    {
      bfd_set_error (bfd_error_bad_value);
      return FALSE;
    }

  addend = link_order->u.reloc.p->addend;


  rel_hash_ptr = (elf_section_data (output_section)->rel_hashes
    + elf_section_data (output_section)->rel_count
    + elf_section_data (output_section)->rel_count2);
  if (link_order->type == bfd_section_reloc_link_order)
    {
      indx = link_order->u.reloc.p->u.section->target_index;
      BFD_ASSERT (indx != 0);
      *rel_hash_ptr = ((void*)0);
    }
  else
    {
      struct elf_link_hash_entry *h;



      h = ((struct elf_link_hash_entry *)
    bfd_wrapped_link_hash_lookup (output_bfd, info,
      link_order->u.reloc.p->u.name,
      FALSE, FALSE, TRUE));
      if (h != ((void*)0)
   && (h->root.type == bfd_link_hash_defined
       || h->root.type == bfd_link_hash_defweak))
 {
   asection *section;

   section = h->root.u.def.section;
   indx = section->output_section->target_index;
   *rel_hash_ptr = ((void*)0);



   addend += section->output_section->vma + section->output_offset;
 }
      else if (h != ((void*)0))
 {


   h->indx = -2;
   *rel_hash_ptr = h;
   indx = 0;
 }
      else
 {
   if (! ((*info->callbacks->unattached_reloc)
   (info, link_order->u.reloc.p->u.name, ((void*)0), ((void*)0), 0)))
     return FALSE;
   indx = 0;
 }
    }



  if (howto->partial_inplace && addend != 0)
    {
      bfd_size_type size;
      bfd_reloc_status_type rstat;
      bfd_byte *buf;
      bfd_boolean ok;
      const char *sym_name;

      size = bfd_get_reloc_size (howto);
      buf = bfd_zmalloc (size);
      if (buf == ((void*)0))
 return FALSE;
      rstat = _bfd_relocate_contents (howto, output_bfd, addend, buf);
      switch (rstat)
 {
 case 130:
   break;

 default:
 case 129:
   abort ();

 case 128:
   if (link_order->type == bfd_section_reloc_link_order)
     sym_name = bfd_section_name (output_bfd,
      link_order->u.reloc.p->u.section);
   else
     sym_name = link_order->u.reloc.p->u.name;
   if (! ((*info->callbacks->reloc_overflow)
   (info, ((void*)0), sym_name, howto->name, addend, ((void*)0),
    ((void*)0), (bfd_vma) 0)))
     {
       free (buf);
       return FALSE;
     }
   break;
 }
      ok = bfd_set_section_contents (output_bfd, output_section, buf,
         link_order->offset, size);
      free (buf);
      if (! ok)
 return FALSE;
    }




  offset = link_order->offset;
  if (! info->relocatable)
    offset += output_section->vma;

  for (i = 0; i < bed->s->int_rels_per_ext_rel; i++)
    {
      irel[i].r_offset = offset;
      irel[i].r_info = 0;
      irel[i].r_addend = 0;
    }
  if (bed->s->arch_size == 32)
    irel[0].r_info = ELF32_R_INFO (indx, howto->type);
  else
    irel[0].r_info = ELF64_R_INFO (indx, howto->type);

  rel_hdr = &elf_section_data (output_section)->rel_hdr;
  erel = rel_hdr->contents;
  if (rel_hdr->sh_type == SHT_REL)
    {
      erel += (elf_section_data (output_section)->rel_count
        * bed->s->sizeof_rel);
      (*bed->s->swap_reloc_out) (output_bfd, irel, erel);
    }
  else
    {
      irel[0].r_addend = addend;
      erel += (elf_section_data (output_section)->rel_count
        * bed->s->sizeof_rela);
      (*bed->s->swap_reloca_out) (output_bfd, irel, erel);
    }

  ++elf_section_data (output_section)->rel_count;

  return TRUE;
}
