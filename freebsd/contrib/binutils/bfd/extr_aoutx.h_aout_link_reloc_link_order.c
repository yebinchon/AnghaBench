
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_13__ ;


struct reloc_std_external {int* r_index; int* r_type; int r_address; } ;
struct reloc_ext_external {int* r_index; int* r_type; int r_addend; int r_address; } ;
struct TYPE_25__ {int name; TYPE_13__* section; } ;
struct bfd_link_order_reloc {scalar_t__ addend; TYPE_4__ u; int reloc; } ;
struct TYPE_22__ {struct bfd_link_order_reloc* p; } ;
struct TYPE_23__ {TYPE_1__ reloc; } ;
struct bfd_link_order {scalar_t__ type; scalar_t__ offset; TYPE_2__ u; } ;
struct aout_link_hash_entry {int indx; int written; } ;
struct aout_final_link_info {scalar_t__ treloff; scalar_t__ dreloff; int output_bfd; TYPE_7__* info; } ;
struct TYPE_26__ {int type; int size; int name; scalar_t__ pc_relative; } ;
typedef TYPE_5__ reloc_howto_type ;
typedef scalar_t__ file_ptr ;
typedef scalar_t__ bfd_vma ;
typedef scalar_t__ bfd_size_type ;
typedef int bfd_reloc_status_type ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
struct TYPE_27__ {scalar_t__ rel_filepos; } ;
typedef TYPE_6__ asection ;
struct TYPE_28__ {TYPE_3__* callbacks; } ;
struct TYPE_24__ {int (* reloc_overflow ) (TYPE_7__*,int *,int ,int ,scalar_t__,int *,int *,scalar_t__) ;int (* unattached_reloc ) (TYPE_7__*,int ,int *,int *,scalar_t__) ;} ;
struct TYPE_21__ {int target_index; int owner; } ;


 int BFD_ASSERT (int) ;
 int FALSE ;
 int MY_put_ext_reloc (int ,int,int,scalar_t__,TYPE_5__*,struct reloc_ext_external*,scalar_t__) ;
 int MY_put_reloc (int ,int,int,scalar_t__,TYPE_5__*,struct reloc_std_external*) ;
 int MY_relocate_contents (TYPE_5__*,int ,scalar_t__,int *) ;
 int N_ABS ;
 int N_EXT ;
 int PUT_WORD (int ,scalar_t__,int ) ;
 int RELOC_EXT_BITS_EXTERN_BIG ;
 int RELOC_EXT_BITS_EXTERN_LITTLE ;
 int RELOC_EXT_BITS_TYPE_SH_BIG ;
 int RELOC_EXT_BITS_TYPE_SH_LITTLE ;
 int RELOC_STD_BITS_BASEREL_BIG ;
 int RELOC_STD_BITS_BASEREL_LITTLE ;
 int RELOC_STD_BITS_EXTERN_BIG ;
 int RELOC_STD_BITS_EXTERN_LITTLE ;
 int RELOC_STD_BITS_JMPTABLE_BIG ;
 int RELOC_STD_BITS_JMPTABLE_LITTLE ;
 int RELOC_STD_BITS_LENGTH_SH_BIG ;
 int RELOC_STD_BITS_LENGTH_SH_LITTLE ;
 int RELOC_STD_BITS_PCREL_BIG ;
 int RELOC_STD_BITS_PCREL_LITTLE ;
 int RELOC_STD_BITS_RELATIVE_BIG ;
 int RELOC_STD_BITS_RELATIVE_LITTLE ;
 scalar_t__ RELOC_STD_SIZE ;
 int SEEK_SET ;
 int TRUE ;
 int abort () ;
 int aout_link_write_other_symbol (struct aout_link_hash_entry*,void*) ;
 scalar_t__ bfd_bwrite (void*,scalar_t__,int ) ;
 int bfd_error_bad_value ;
 scalar_t__ bfd_get_reloc_size (TYPE_5__*) ;
 scalar_t__ bfd_header_big_endian (int ) ;
 scalar_t__ bfd_is_abs_section (TYPE_13__*) ;



 TYPE_5__* bfd_reloc_type_lookup (int ,int ) ;
 int bfd_section_name (int ,TYPE_13__*) ;
 scalar_t__ bfd_section_reloc_link_order ;
 scalar_t__ bfd_seek (int ,scalar_t__,int ) ;
 int bfd_set_error (int ) ;
 int bfd_set_section_contents (int ,TYPE_6__*,void*,scalar_t__,scalar_t__) ;
 scalar_t__ bfd_symbol_reloc_link_order ;
 scalar_t__ bfd_wrapped_link_hash_lookup (int ,TYPE_7__*,int ,int ,int ,int ) ;
 int * bfd_zmalloc (scalar_t__) ;
 int free (int *) ;
 TYPE_6__* obj_datasec (int ) ;
 scalar_t__ obj_reloc_entry_size (int ) ;
 scalar_t__ obj_sym_filepos (int ) ;
 TYPE_6__* obj_textsec (int ) ;
 int stub1 (TYPE_7__*,int ,int *,int *,scalar_t__) ;
 int stub2 (TYPE_7__*,int *,int ,int ,scalar_t__,int *,int *,scalar_t__) ;

__attribute__((used)) static bfd_boolean
aout_link_reloc_link_order (struct aout_final_link_info *finfo,
       asection *o,
       struct bfd_link_order *p)
{
  struct bfd_link_order_reloc *pr;
  int r_index;
  int r_extern;
  reloc_howto_type *howto;
  file_ptr *reloff_ptr = ((void*)0);
  struct reloc_std_external srel;
  struct reloc_ext_external erel;
  void * rel_ptr;
  bfd_size_type amt;

  pr = p->u.reloc.p;

  if (p->type == bfd_section_reloc_link_order)
    {
      r_extern = 0;
      if (bfd_is_abs_section (pr->u.section))
 r_index = N_ABS | N_EXT;
      else
 {
   BFD_ASSERT (pr->u.section->owner == finfo->output_bfd);
   r_index = pr->u.section->target_index;
 }
    }
  else
    {
      struct aout_link_hash_entry *h;

      BFD_ASSERT (p->type == bfd_symbol_reloc_link_order);
      r_extern = 1;
      h = ((struct aout_link_hash_entry *)
    bfd_wrapped_link_hash_lookup (finfo->output_bfd, finfo->info,
      pr->u.name, FALSE, FALSE, TRUE));
      if (h != ((void*)0)
   && h->indx >= 0)
 r_index = h->indx;
      else if (h != ((void*)0))
 {




   h->indx = -2;
   h->written = FALSE;
   if (! aout_link_write_other_symbol (h, (void *) finfo))
     return FALSE;
   r_index = h->indx;
 }
      else
 {
   if (! ((*finfo->info->callbacks->unattached_reloc)
   (finfo->info, pr->u.name, ((void*)0), ((void*)0), (bfd_vma) 0)))
     return FALSE;
   r_index = 0;
 }
    }

  howto = bfd_reloc_type_lookup (finfo->output_bfd, pr->reloc);
  if (howto == 0)
    {
      bfd_set_error (bfd_error_bad_value);
      return FALSE;
    }

  if (o == obj_textsec (finfo->output_bfd))
    reloff_ptr = &finfo->treloff;
  else if (o == obj_datasec (finfo->output_bfd))
    reloff_ptr = &finfo->dreloff;
  else
    abort ();

  if (obj_reloc_entry_size (finfo->output_bfd) == RELOC_STD_SIZE)
    {




      {
 int r_pcrel;
 int r_baserel;
 int r_jmptable;
 int r_relative;
 int r_length;

 r_pcrel = (int) howto->pc_relative;
 r_baserel = (howto->type & 8) != 0;
 r_jmptable = (howto->type & 16) != 0;
 r_relative = (howto->type & 32) != 0;
 r_length = howto->size;

 PUT_WORD (finfo->output_bfd, p->offset, srel.r_address);
 if (bfd_header_big_endian (finfo->output_bfd))
   {
     srel.r_index[0] = r_index >> 16;
     srel.r_index[1] = r_index >> 8;
     srel.r_index[2] = r_index;
     srel.r_type[0] =
       ((r_extern ? RELOC_STD_BITS_EXTERN_BIG : 0)
        | (r_pcrel ? RELOC_STD_BITS_PCREL_BIG : 0)
        | (r_baserel ? RELOC_STD_BITS_BASEREL_BIG : 0)
        | (r_jmptable ? RELOC_STD_BITS_JMPTABLE_BIG : 0)
        | (r_relative ? RELOC_STD_BITS_RELATIVE_BIG : 0)
        | (r_length << RELOC_STD_BITS_LENGTH_SH_BIG));
   }
 else
   {
     srel.r_index[2] = r_index >> 16;
     srel.r_index[1] = r_index >> 8;
     srel.r_index[0] = r_index;
     srel.r_type[0] =
       ((r_extern ? RELOC_STD_BITS_EXTERN_LITTLE : 0)
        | (r_pcrel ? RELOC_STD_BITS_PCREL_LITTLE : 0)
        | (r_baserel ? RELOC_STD_BITS_BASEREL_LITTLE : 0)
        | (r_jmptable ? RELOC_STD_BITS_JMPTABLE_LITTLE : 0)
        | (r_relative ? RELOC_STD_BITS_RELATIVE_LITTLE : 0)
        | (r_length << RELOC_STD_BITS_LENGTH_SH_LITTLE));
   }
      }

      rel_ptr = (void *) &srel;






      if (pr->addend != 0)
 {
   bfd_size_type size;
   bfd_reloc_status_type r;
   bfd_byte *buf;
   bfd_boolean ok;

   size = bfd_get_reloc_size (howto);
   buf = bfd_zmalloc (size);
   if (buf == ((void*)0))
     return FALSE;
   r = MY_relocate_contents (howto, finfo->output_bfd,
        (bfd_vma) pr->addend, buf);
   switch (r)
     {
     case 130:
       break;
     default:
     case 129:
       abort ();
     case 128:
       if (! ((*finfo->info->callbacks->reloc_overflow)
       (finfo->info, ((void*)0),
        (p->type == bfd_section_reloc_link_order
         ? bfd_section_name (finfo->output_bfd,
        pr->u.section)
         : pr->u.name),
        howto->name, pr->addend, ((void*)0), ((void*)0), (bfd_vma) 0)))
  {
    free (buf);
    return FALSE;
  }
       break;
     }
   ok = bfd_set_section_contents (finfo->output_bfd, o, (void *) buf,
      (file_ptr) p->offset, size);
   free (buf);
   if (! ok)
     return FALSE;
 }
    }
  else
    {




      PUT_WORD (finfo->output_bfd, p->offset, erel.r_address);

      if (bfd_header_big_endian (finfo->output_bfd))
 {
   erel.r_index[0] = r_index >> 16;
   erel.r_index[1] = r_index >> 8;
   erel.r_index[2] = r_index;
   erel.r_type[0] =
     ((r_extern ? RELOC_EXT_BITS_EXTERN_BIG : 0)
      | (howto->type << RELOC_EXT_BITS_TYPE_SH_BIG));
 }
      else
 {
   erel.r_index[2] = r_index >> 16;
   erel.r_index[1] = r_index >> 8;
   erel.r_index[0] = r_index;
   erel.r_type[0] =
     (r_extern ? RELOC_EXT_BITS_EXTERN_LITTLE : 0)
       | (howto->type << RELOC_EXT_BITS_TYPE_SH_LITTLE);
 }

      PUT_WORD (finfo->output_bfd, (bfd_vma) pr->addend, erel.r_addend);


      rel_ptr = (void *) &erel;
    }

  amt = obj_reloc_entry_size (finfo->output_bfd);
  if (bfd_seek (finfo->output_bfd, *reloff_ptr, SEEK_SET) != 0
      || bfd_bwrite (rel_ptr, amt, finfo->output_bfd) != amt)
    return FALSE;

  *reloff_ptr += obj_reloc_entry_size (finfo->output_bfd);



  BFD_ASSERT (*reloff_ptr <= obj_sym_filepos (finfo->output_bfd)
       && (reloff_ptr != &finfo->treloff
    || (*reloff_ptr
        <= obj_datasec (finfo->output_bfd)->rel_filepos)));

  return TRUE;
}
