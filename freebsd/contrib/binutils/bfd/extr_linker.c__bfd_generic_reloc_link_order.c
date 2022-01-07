
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_10__ ;


struct generic_link_hash_entry {int sym; int written; } ;
struct TYPE_19__ {TYPE_3__* p; } ;
struct TYPE_20__ {TYPE_4__ reloc; } ;
struct bfd_link_order {int offset; scalar_t__ type; TYPE_5__ u; } ;
struct bfd_link_info {TYPE_1__* callbacks; int relocatable; } ;
typedef int file_ptr ;
typedef int bfd_vma ;
typedef int bfd_size_type ;
typedef int bfd_reloc_status_type ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_21__ {size_t reloc_count; TYPE_7__** orelocation; } ;
typedef TYPE_6__ asection ;
struct TYPE_22__ {int address; scalar_t__ addend; TYPE_10__* howto; int * sym_ptr_ptr; } ;
typedef TYPE_7__ arelent ;
struct TYPE_23__ {int * symbol_ptr_ptr; } ;
struct TYPE_17__ {int name; TYPE_9__* section; } ;
struct TYPE_18__ {scalar_t__ addend; TYPE_2__ u; int reloc; } ;
struct TYPE_16__ {int (* reloc_overflow ) (struct bfd_link_info*,int *,int ,int ,scalar_t__,int *,int *,int ) ;int (* unattached_reloc ) (struct bfd_link_info*,int ,int *,int *,int ) ;} ;
struct TYPE_15__ {int name; int partial_inplace; } ;


 int FALSE ;
 int TRUE ;
 int _bfd_relocate_contents (TYPE_10__*,int *,int ,int *) ;
 int abort () ;
 TYPE_7__* bfd_alloc (int *,int) ;
 int bfd_error_bad_value ;
 int bfd_get_reloc_size (TYPE_10__*) ;
 int bfd_octets_per_byte (int *) ;



 TYPE_10__* bfd_reloc_type_lookup (int *,int ) ;
 int bfd_section_name (int *,TYPE_9__*) ;
 scalar_t__ bfd_section_reloc_link_order ;
 int bfd_set_error (int ) ;
 int bfd_set_section_contents (int *,TYPE_6__*,int *,int,int ) ;
 scalar_t__ bfd_wrapped_link_hash_lookup (int *,struct bfd_link_info*,int ,int ,int ,int ) ;
 int * bfd_zmalloc (int ) ;
 int free (int *) ;
 int stub1 (struct bfd_link_info*,int ,int *,int *,int ) ;
 int stub2 (struct bfd_link_info*,int *,int ,int ,scalar_t__,int *,int *,int ) ;

bfd_boolean
_bfd_generic_reloc_link_order (bfd *abfd,
          struct bfd_link_info *info,
          asection *sec,
          struct bfd_link_order *link_order)
{
  arelent *r;

  if (! info->relocatable)
    abort ();
  if (sec->orelocation == ((void*)0))
    abort ();

  r = bfd_alloc (abfd, sizeof (arelent));
  if (r == ((void*)0))
    return FALSE;

  r->address = link_order->offset;
  r->howto = bfd_reloc_type_lookup (abfd, link_order->u.reloc.p->reloc);
  if (r->howto == 0)
    {
      bfd_set_error (bfd_error_bad_value);
      return FALSE;
    }


  if (link_order->type == bfd_section_reloc_link_order)
    r->sym_ptr_ptr = link_order->u.reloc.p->u.section->symbol_ptr_ptr;
  else
    {
      struct generic_link_hash_entry *h;

      h = ((struct generic_link_hash_entry *)
    bfd_wrapped_link_hash_lookup (abfd, info,
      link_order->u.reloc.p->u.name,
      FALSE, FALSE, TRUE));
      if (h == ((void*)0)
   || ! h->written)
 {
   if (! ((*info->callbacks->unattached_reloc)
   (info, link_order->u.reloc.p->u.name, ((void*)0), ((void*)0), 0)))
     return FALSE;
   bfd_set_error (bfd_error_bad_value);
   return FALSE;
 }
      r->sym_ptr_ptr = &h->sym;
    }



  if (! r->howto->partial_inplace)
    r->addend = link_order->u.reloc.p->addend;
  else
    {
      bfd_size_type size;
      bfd_reloc_status_type rstat;
      bfd_byte *buf;
      bfd_boolean ok;
      file_ptr loc;

      size = bfd_get_reloc_size (r->howto);
      buf = bfd_zmalloc (size);
      if (buf == ((void*)0))
 return FALSE;
      rstat = _bfd_relocate_contents (r->howto, abfd,
          (bfd_vma) link_order->u.reloc.p->addend,
          buf);
      switch (rstat)
 {
 case 130:
   break;
 default:
 case 129:
   abort ();
 case 128:
   if (! ((*info->callbacks->reloc_overflow)
   (info, ((void*)0),
    (link_order->type == bfd_section_reloc_link_order
     ? bfd_section_name (abfd, link_order->u.reloc.p->u.section)
     : link_order->u.reloc.p->u.name),
    r->howto->name, link_order->u.reloc.p->addend,
    ((void*)0), ((void*)0), 0)))
     {
       free (buf);
       return FALSE;
     }
   break;
 }
      loc = link_order->offset * bfd_octets_per_byte (abfd);
      ok = bfd_set_section_contents (abfd, sec, buf, loc, size);
      free (buf);
      if (! ok)
 return FALSE;

      r->addend = 0;
    }

  sec->orelocation[sec->reloc_count] = r;
  ++sec->reloc_count;

  return TRUE;
}
