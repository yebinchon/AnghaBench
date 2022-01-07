
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct internal_reloc {int r_symndx; int r_type; scalar_t__ r_vaddr; } ;
struct coff_link_hash_entry {int indx; } ;
struct coff_final_link_info {TYPE_9__* info; TYPE_1__* section_info; } ;
struct TYPE_23__ {TYPE_4__* p; } ;
struct TYPE_24__ {TYPE_5__ reloc; } ;
struct bfd_link_order {scalar_t__ type; int offset; TYPE_6__ u; } ;
struct TYPE_25__ {int type; int name; } ;
typedef TYPE_7__ reloc_howto_type ;
typedef int file_ptr ;
typedef int bfd_vma ;
typedef int bfd_size_type ;
typedef int bfd_reloc_status_type ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_26__ {size_t target_index; int reloc_count; scalar_t__ vma; } ;
typedef TYPE_8__ asection ;
struct TYPE_27__ {TYPE_2__* callbacks; } ;
struct TYPE_21__ {int name; int section; } ;
struct TYPE_22__ {scalar_t__ addend; TYPE_3__ u; int reloc; } ;
struct TYPE_20__ {int (* unattached_reloc ) (TYPE_9__*,int ,int *,TYPE_8__*,int ) ;int (* reloc_overflow ) (TYPE_9__*,int *,int ,int ,scalar_t__,int *,TYPE_8__*,int ) ;} ;
struct TYPE_19__ {struct coff_link_hash_entry** rel_hashes; struct internal_reloc* relocs; } ;


 int FALSE ;
 int TRUE ;
 int _bfd_relocate_contents (TYPE_7__*,int *,int ,int *) ;
 int abort () ;
 int bfd_error_bad_value ;
 int bfd_get_reloc_size (TYPE_7__*) ;
 int bfd_octets_per_byte (int *) ;



 TYPE_7__* bfd_reloc_type_lookup (int *,int ) ;
 int bfd_section_name (int *,int ) ;
 scalar_t__ bfd_section_reloc_link_order ;
 int bfd_set_error (int ) ;
 int bfd_set_section_contents (int *,TYPE_8__*,int *,int,int ) ;
 scalar_t__ bfd_wrapped_link_hash_lookup (int *,TYPE_9__*,int ,int ,int ,int ) ;
 int * bfd_zmalloc (int ) ;
 int free (int *) ;
 int memset (struct internal_reloc*,int ,int) ;
 int stub1 (TYPE_9__*,int *,int ,int ,scalar_t__,int *,TYPE_8__*,int ) ;
 int stub2 (TYPE_9__*,int ,int *,TYPE_8__*,int ) ;

bfd_boolean
_bfd_coff_reloc_link_order (bfd *output_bfd,
       struct coff_final_link_info *finfo,
       asection *output_section,
       struct bfd_link_order *link_order)
{
  reloc_howto_type *howto;
  struct internal_reloc *irel;
  struct coff_link_hash_entry **rel_hash_ptr;

  howto = bfd_reloc_type_lookup (output_bfd, link_order->u.reloc.p->reloc);
  if (howto == ((void*)0))
    {
      bfd_set_error (bfd_error_bad_value);
      return FALSE;
    }

  if (link_order->u.reloc.p->addend != 0)
    {
      bfd_size_type size;
      bfd_byte *buf;
      bfd_reloc_status_type rstat;
      bfd_boolean ok;
      file_ptr loc;

      size = bfd_get_reloc_size (howto);
      buf = bfd_zmalloc (size);
      if (buf == ((void*)0))
 return FALSE;

      rstat = _bfd_relocate_contents (howto, output_bfd,
          (bfd_vma) link_order->u.reloc.p->addend, buf);

      switch (rstat)
 {
 case 130:
   break;
 default:
 case 129:
   abort ();
 case 128:
   if (! ((*finfo->info->callbacks->reloc_overflow)
   (finfo->info, ((void*)0),
    (link_order->type == bfd_section_reloc_link_order
     ? bfd_section_name (output_bfd,
           link_order->u.reloc.p->u.section)
     : link_order->u.reloc.p->u.name),
    howto->name, link_order->u.reloc.p->addend,
    (bfd *) ((void*)0), (asection *) ((void*)0), (bfd_vma) 0)))
     {
       free (buf);
       return FALSE;
     }
   break;
 }
      loc = link_order->offset * bfd_octets_per_byte (output_bfd);
      ok = bfd_set_section_contents (output_bfd, output_section, buf,
                                     loc, size);
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

  if (link_order->type == bfd_section_reloc_link_order)
    {




      abort ();
      *rel_hash_ptr = ((void*)0);
      irel->r_symndx = 0;
    }
  else
    {
      struct coff_link_hash_entry *h;

      h = ((struct coff_link_hash_entry *)
    bfd_wrapped_link_hash_lookup (output_bfd, finfo->info,
      link_order->u.reloc.p->u.name,
      FALSE, FALSE, TRUE));
      if (h != ((void*)0))
 {
   if (h->indx >= 0)
     irel->r_symndx = h->indx;
   else
     {


       h->indx = -2;
       *rel_hash_ptr = h;
       irel->r_symndx = 0;
     }
 }
      else
 {
   if (! ((*finfo->info->callbacks->unattached_reloc)
   (finfo->info, link_order->u.reloc.p->u.name, (bfd *) ((void*)0),
    (asection *) ((void*)0), (bfd_vma) 0)))
     return FALSE;
   irel->r_symndx = 0;
 }
    }


  irel->r_type = howto->type;





  ++output_section->reloc_count;

  return TRUE;
}
