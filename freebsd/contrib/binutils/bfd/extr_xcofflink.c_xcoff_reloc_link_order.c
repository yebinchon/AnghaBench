
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_39__ TYPE_9__ ;
typedef struct TYPE_38__ TYPE_8__ ;
typedef struct TYPE_37__ TYPE_7__ ;
typedef struct TYPE_36__ TYPE_6__ ;
typedef struct TYPE_35__ TYPE_5__ ;
typedef struct TYPE_34__ TYPE_4__ ;
typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_1__ ;
typedef struct TYPE_30__ TYPE_17__ ;
typedef struct TYPE_29__ TYPE_15__ ;
typedef struct TYPE_28__ TYPE_14__ ;
typedef struct TYPE_27__ TYPE_13__ ;
typedef struct TYPE_26__ TYPE_12__ ;
typedef struct TYPE_25__ TYPE_11__ ;
typedef struct TYPE_24__ TYPE_10__ ;


struct TYPE_31__ {char const* string; } ;
struct TYPE_34__ {scalar_t__ value; TYPE_15__* section; } ;
struct TYPE_33__ {TYPE_2__* p; } ;
struct TYPE_35__ {TYPE_4__ def; TYPE_3__ c; } ;
struct TYPE_36__ {scalar_t__ type; TYPE_1__ root; TYPE_5__ u; } ;
struct xcoff_link_hash_entry {int indx; int ldindx; TYPE_6__ root; } ;
struct xcoff_final_link_info {int ldrel; TYPE_13__* section_info; TYPE_17__* info; } ;
struct internal_reloc {int r_symndx; int r_type; int r_size; scalar_t__ r_vaddr; } ;
struct internal_ldrel {int l_symndx; int l_rtype; size_t l_rsecnm; scalar_t__ l_vaddr; } ;
struct TYPE_25__ {TYPE_10__* p; } ;
struct TYPE_26__ {TYPE_11__ reloc; } ;
struct bfd_link_order {scalar_t__ type; scalar_t__ offset; TYPE_12__ u; } ;
struct TYPE_28__ {int type; int bitsize; scalar_t__ complain_on_overflow; int name; } ;
typedef TYPE_14__ reloc_howto_type ;
typedef int file_ptr ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_size_type ;
typedef int bfd_reloc_status_type ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_29__ {scalar_t__ output_offset; size_t target_index; int reloc_count; TYPE_7__* output_section; scalar_t__ vma; } ;
typedef TYPE_15__ asection ;
struct TYPE_39__ {int name; } ;
struct TYPE_38__ {int (* reloc_overflow ) (TYPE_17__*,int *,int ,int ,scalar_t__,int *,int *,scalar_t__) ;int (* unattached_reloc ) (TYPE_17__*,int ,int *,int *,scalar_t__) ;} ;
struct TYPE_37__ {scalar_t__ vma; char* name; } ;
struct TYPE_32__ {TYPE_15__* section; } ;
struct TYPE_30__ {TYPE_8__* callbacks; } ;
struct TYPE_27__ {struct xcoff_link_hash_entry** rel_hashes; struct internal_reloc* relocs; } ;
struct TYPE_24__ {scalar_t__ addend; TYPE_9__ u; int reloc; } ;


 int FALSE ;
 int TRUE ;
 int _ (char*) ;
 int _bfd_error_handler (int ,int ,char const*) ;
 int _bfd_relocate_contents (TYPE_14__*,int *,scalar_t__,int *) ;
 int abort () ;
 int bfd_error_bad_value ;
 int bfd_error_nonrepresentable_section ;
 int bfd_get_filename (int *) ;
 int bfd_get_reloc_size (TYPE_14__*) ;
 scalar_t__ bfd_link_hash_common ;
 scalar_t__ bfd_link_hash_defined ;
 scalar_t__ bfd_link_hash_defweak ;



 TYPE_14__* bfd_reloc_type_lookup (int *,int ) ;
 scalar_t__ bfd_section_reloc_link_order ;
 int bfd_set_error (int ) ;
 int bfd_set_section_contents (int *,TYPE_15__*,void*,int ,int ) ;
 scalar_t__ bfd_wrapped_link_hash_lookup (int *,TYPE_17__*,int ,int ,int ,int ) ;
 scalar_t__ bfd_xcoff_ldrelsz (int *) ;
 int bfd_xcoff_swap_ldrel_out (int *,struct internal_ldrel*,int ) ;
 int * bfd_zmalloc (int ) ;
 scalar_t__ complain_overflow_signed ;
 int free (int *) ;
 int memset (struct internal_reloc*,int ,int) ;
 scalar_t__ strcmp (char const*,char*) ;
 int stub1 (TYPE_17__*,int ,int *,int *,scalar_t__) ;
 int stub2 (TYPE_17__*,int *,int ,int ,scalar_t__,int *,int *,scalar_t__) ;
 int stub3 (int ,int ,char const*) ;
 int stub4 (int ,int ,char const*) ;

__attribute__((used)) static bfd_boolean
xcoff_reloc_link_order (bfd *output_bfd,
   struct xcoff_final_link_info *finfo,
   asection *output_section,
   struct bfd_link_order *link_order)
{
  reloc_howto_type *howto;
  struct xcoff_link_hash_entry *h;
  asection *hsec;
  bfd_vma hval;
  bfd_vma addend;
  struct internal_reloc *irel;
  struct xcoff_link_hash_entry **rel_hash_ptr;
  struct internal_ldrel ldrel;

  if (link_order->type == bfd_section_reloc_link_order)




    abort ();

  howto = bfd_reloc_type_lookup (output_bfd, link_order->u.reloc.p->reloc);
  if (howto == ((void*)0))
    {
      bfd_set_error (bfd_error_bad_value);
      return FALSE;
    }

  h = ((struct xcoff_link_hash_entry *)
       bfd_wrapped_link_hash_lookup (output_bfd, finfo->info,
         link_order->u.reloc.p->u.name,
         FALSE, FALSE, TRUE));
  if (h == ((void*)0))
    {
      if (! ((*finfo->info->callbacks->unattached_reloc)
      (finfo->info, link_order->u.reloc.p->u.name, ((void*)0), ((void*)0), (bfd_vma) 0)))
 return FALSE;
      return TRUE;
    }

  if (h->root.type == bfd_link_hash_common)
    {
      hsec = h->root.u.c.p->section;
      hval = 0;
    }
  else if (h->root.type == bfd_link_hash_defined
    || h->root.type == bfd_link_hash_defweak)
    {
      hsec = h->root.u.def.section;
      hval = h->root.u.def.value;
    }
  else
    {
      hsec = ((void*)0);
      hval = 0;
    }

  addend = link_order->u.reloc.p->addend;
  if (hsec != ((void*)0))
    addend += (hsec->output_section->vma
        + hsec->output_offset
        + hval);

  if (addend != 0)
    {
      bfd_size_type size;
      bfd_byte *buf;
      bfd_reloc_status_type rstat;
      bfd_boolean ok;

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
   if (! ((*finfo->info->callbacks->reloc_overflow)
   (finfo->info, ((void*)0), link_order->u.reloc.p->u.name,
    howto->name, addend, ((void*)0), ((void*)0), (bfd_vma) 0)))
     {
       free (buf);
       return FALSE;
     }
   break;
 }
      ok = bfd_set_section_contents (output_bfd, output_section, (void *) buf,
         (file_ptr) link_order->offset, size);
      free (buf);
      if (! ok)
 return FALSE;
    }



  irel = (finfo->section_info[output_section->target_index].relocs
   + output_section->reloc_count);
  rel_hash_ptr = (finfo->section_info[output_section->target_index].rel_hashes
    + output_section->reloc_count);

  memset (irel, 0, sizeof (struct internal_reloc));
  *rel_hash_ptr = ((void*)0);

  irel->r_vaddr = output_section->vma + link_order->offset;

  if (h->indx >= 0)
    irel->r_symndx = h->indx;
  else
    {

      h->indx = -2;
      *rel_hash_ptr = h;
      irel->r_symndx = 0;
    }

  irel->r_type = howto->type;
  irel->r_size = howto->bitsize - 1;
  if (howto->complain_on_overflow == complain_overflow_signed)
    irel->r_size |= 0x80;

  ++output_section->reloc_count;



  ldrel.l_vaddr = irel->r_vaddr;

  if (hsec != ((void*)0))
    {
      const char *secname;

      secname = hsec->output_section->name;

      if (strcmp (secname, ".text") == 0)
 ldrel.l_symndx = 0;
      else if (strcmp (secname, ".data") == 0)
 ldrel.l_symndx = 1;
      else if (strcmp (secname, ".bss") == 0)
 ldrel.l_symndx = 2;
      else
 {
   (*_bfd_error_handler)
     (_("%s: loader reloc in unrecognized section `%s'"),
      bfd_get_filename (output_bfd), secname);
   bfd_set_error (bfd_error_nonrepresentable_section);
   return FALSE;
 }
    }
  else
    {
      if (h->ldindx < 0)
 {
   (*_bfd_error_handler)
     (_("%s: `%s' in loader reloc but not loader sym"),
      bfd_get_filename (output_bfd),
      h->root.root.string);
   bfd_set_error (bfd_error_bad_value);
   return FALSE;
 }
      ldrel.l_symndx = h->ldindx;
    }

  ldrel.l_rtype = (irel->r_size << 8) | irel->r_type;
  ldrel.l_rsecnm = output_section->target_index;
  bfd_xcoff_swap_ldrel_out (output_bfd, &ldrel, finfo->ldrel);
  finfo->ldrel += bfd_xcoff_ldrelsz(output_bfd);

  return TRUE;
}
