
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_10__ ;


struct bfd_link_info {TYPE_8__* hash; TYPE_2__* callbacks; } ;
struct TYPE_19__ {scalar_t__ size; TYPE_10__* p; } ;
struct TYPE_16__ {int * abfd; } ;
struct TYPE_20__ {TYPE_4__ c; TYPE_1__ undef; } ;
struct bfd_link_hash_entry {scalar_t__ type; TYPE_5__ u; } ;
struct bfd_link_hash_common_entry {int dummy; } ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_size_type ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_21__ {int flags; TYPE_9__* section; } ;
typedef TYPE_6__ asymbol ;
struct TYPE_23__ {char* name; } ;
struct TYPE_22__ {int table; } ;
struct TYPE_18__ {int flags; } ;
struct TYPE_17__ {int (* add_archive_element ) (struct bfd_link_info*,int *,int ) ;} ;
struct TYPE_15__ {unsigned int alignment_power; TYPE_3__* section; } ;


 int BSF_GLOBAL ;
 int BSF_INDIRECT ;
 int BSF_WEAK ;
 int FALSE ;
 int SEC_ALLOC ;
 int TRUE ;
 TYPE_6__** _bfd_generic_link_get_symbols (int *) ;
 int _bfd_generic_link_get_symcount (int *) ;
 int bfd_asymbol_name (TYPE_6__*) ;
 scalar_t__ bfd_asymbol_value (TYPE_6__*) ;
 TYPE_9__* bfd_com_section_ptr ;
 TYPE_10__* bfd_hash_allocate (int *,int) ;
 int bfd_is_com_section (TYPE_9__*) ;
 scalar_t__ bfd_link_hash_common ;
 struct bfd_link_hash_entry* bfd_link_hash_lookup (TYPE_8__*,int ,int ,int ,int ) ;
 scalar_t__ bfd_link_hash_undefined ;
 unsigned int bfd_log2 (scalar_t__) ;
 void* bfd_make_section_old_way (int *,char*) ;
 int generic_link_add_symbol_list (int *,struct bfd_link_info*,int,TYPE_6__**,int ) ;
 int generic_link_read_symbols (int *) ;
 int stub1 (struct bfd_link_info*,int *,int ) ;
 int stub2 (struct bfd_link_info*,int *,int ) ;

__attribute__((used)) static bfd_boolean
generic_link_check_archive_element (bfd *abfd,
        struct bfd_link_info *info,
        bfd_boolean *pneeded,
        bfd_boolean collect)
{
  asymbol **pp, **ppend;

  *pneeded = FALSE;

  if (! generic_link_read_symbols (abfd))
    return FALSE;

  pp = _bfd_generic_link_get_symbols (abfd);
  ppend = pp + _bfd_generic_link_get_symcount (abfd);
  for (; pp < ppend; pp++)
    {
      asymbol *p;
      struct bfd_link_hash_entry *h;

      p = *pp;


      if (! bfd_is_com_section (p->section)
   && (p->flags & (BSF_GLOBAL | BSF_INDIRECT | BSF_WEAK)) == 0)
 continue;






      h = bfd_link_hash_lookup (info->hash, bfd_asymbol_name (p), FALSE,
    FALSE, TRUE);
      if (h == ((void*)0)
   || (h->type != bfd_link_hash_undefined
       && h->type != bfd_link_hash_common))
 continue;



      if (! bfd_is_com_section (p->section))
 {
   bfd_size_type symcount;
   asymbol **symbols;


   if (! (*info->callbacks->add_archive_element) (info, abfd,
        bfd_asymbol_name (p)))
     return FALSE;
   symcount = _bfd_generic_link_get_symcount (abfd);
   symbols = _bfd_generic_link_get_symbols (abfd);
   if (! generic_link_add_symbol_list (abfd, info, symcount,
           symbols, collect))
     return FALSE;
   *pneeded = TRUE;
   return TRUE;
 }



      if (h->type == bfd_link_hash_undefined)
 {
   bfd *symbfd;
   bfd_vma size;
   unsigned int power;

   symbfd = h->u.undef.abfd;
   if (symbfd == ((void*)0))
     {



       if (! (*info->callbacks->add_archive_element)
    (info, abfd, bfd_asymbol_name (p)))
  return FALSE;
       *pneeded = TRUE;
       return TRUE;
     }
   h->type = bfd_link_hash_common;
   h->u.c.p =
     bfd_hash_allocate (&info->hash->table,
          sizeof (struct bfd_link_hash_common_entry));
   if (h->u.c.p == ((void*)0))
     return FALSE;

   size = bfd_asymbol_value (p);
   h->u.c.size = size;

   power = bfd_log2 (size);
   if (power > 4)
     power = 4;
   h->u.c.p->alignment_power = power;

   if (p->section == bfd_com_section_ptr)
     h->u.c.p->section = bfd_make_section_old_way (symbfd, "COMMON");
   else
     h->u.c.p->section = bfd_make_section_old_way (symbfd,
         p->section->name);
   h->u.c.p->section->flags = SEC_ALLOC;
 }
      else
 {




   if (bfd_asymbol_value (p) > h->u.c.size)
     h->u.c.size = bfd_asymbol_value (p);
 }
    }


  return TRUE;
}
