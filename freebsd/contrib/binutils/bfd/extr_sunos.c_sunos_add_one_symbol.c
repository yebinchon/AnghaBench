
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_9__ ;
typedef struct TYPE_30__ TYPE_8__ ;
typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_13__ ;
typedef struct TYPE_21__ TYPE_12__ ;
typedef struct TYPE_20__ TYPE_11__ ;
typedef struct TYPE_19__ TYPE_10__ ;


struct TYPE_29__ {TYPE_6__* section; } ;
struct TYPE_26__ {TYPE_3__* p; } ;
struct TYPE_23__ {TYPE_5__* abfd; } ;
struct TYPE_30__ {TYPE_7__ def; TYPE_4__ c; TYPE_1__ undef; } ;
struct TYPE_31__ {scalar_t__ type; TYPE_8__ u; } ;
struct TYPE_19__ {TYPE_9__ root; } ;
struct sunos_link_hash_entry {int flags; int dynindx; TYPE_10__ root; } ;
struct bfd_link_info {TYPE_11__* hash; } ;
struct bfd_link_hash_entry {int dummy; } ;
typedef int flagword ;
typedef int bfd_vma ;
typedef int bfd_boolean ;
struct TYPE_21__ {int flags; scalar_t__ xvec; } ;
typedef TYPE_12__ bfd ;
typedef int asection ;
struct TYPE_28__ {TYPE_5__* owner; } ;
struct TYPE_27__ {int flags; } ;
struct TYPE_25__ {TYPE_2__* section; } ;
struct TYPE_24__ {TYPE_5__* owner; } ;
struct TYPE_22__ {int dynsymcount; } ;
struct TYPE_20__ {scalar_t__ creator; } ;


 int BSF_CONSTRUCTOR ;
 int BSF_INDIRECT ;
 int BSF_WARNING ;
 int DYNAMIC ;
 int FALSE ;
 int SUNOS_CONSTRUCTOR ;
 int SUNOS_DEF_DYNAMIC ;
 int SUNOS_DEF_REGULAR ;
 int SUNOS_REF_DYNAMIC ;
 int SUNOS_REF_REGULAR ;
 int TRUE ;
 int _bfd_generic_link_add_one_symbol (struct bfd_link_info*,TYPE_12__*,char const*,int,int *,int ,char const*,int ,int ,struct bfd_link_hash_entry**) ;
 scalar_t__ bfd_is_com_section (int *) ;
 scalar_t__ bfd_is_und_section (int *) ;
 scalar_t__ bfd_link_hash_common ;
 scalar_t__ bfd_link_hash_defined ;
 scalar_t__ bfd_link_hash_defweak ;
 scalar_t__ bfd_link_hash_new ;
 scalar_t__ bfd_link_hash_undefined ;
 int * bfd_und_section_ptr ;
 scalar_t__ bfd_wrapped_link_hash_lookup (TYPE_12__*,struct bfd_link_info*,char const*,int ,int ,int ) ;
 int * obj_bsssec (TYPE_12__*) ;
 TYPE_13__* sunos_hash_table (struct bfd_link_info*) ;
 struct sunos_link_hash_entry* sunos_link_hash_lookup (TYPE_13__*,char const*,int ,int ,int ) ;

__attribute__((used)) static bfd_boolean
sunos_add_one_symbol (struct bfd_link_info *info,
        bfd *abfd,
        const char *name,
        flagword flags,
        asection *section,
        bfd_vma value,
        const char *string,
        bfd_boolean copy,
        bfd_boolean collect,
        struct bfd_link_hash_entry **hashp)
{
  struct sunos_link_hash_entry *h;
  int new_flag;

  if ((flags & (BSF_INDIRECT | BSF_WARNING | BSF_CONSTRUCTOR)) != 0
      || ! bfd_is_und_section (section))
    h = sunos_link_hash_lookup (sunos_hash_table (info), name, TRUE, copy,
    FALSE);
  else
    h = ((struct sunos_link_hash_entry *)
  bfd_wrapped_link_hash_lookup (abfd, info, name, TRUE, copy, FALSE));
  if (h == ((void*)0))
    return FALSE;

  if (hashp != ((void*)0))
    *hashp = (struct bfd_link_hash_entry *) h;




  if ((abfd->flags & DYNAMIC) != 0
      && bfd_is_com_section (section))
    section = obj_bsssec (abfd);

  if (! bfd_is_und_section (section)
      && h->root.root.type != bfd_link_hash_new
      && h->root.root.type != bfd_link_hash_undefined
      && h->root.root.type != bfd_link_hash_defweak)
    {


      if ((abfd->flags & DYNAMIC) != 0)
 {




   section = bfd_und_section_ptr;
 }
      else if (h->root.root.type == bfd_link_hash_defined
        && h->root.root.u.def.section->owner != ((void*)0)
        && (h->root.root.u.def.section->owner->flags & DYNAMIC) != 0)
 {



   h->root.root.type = bfd_link_hash_undefined;
   h->root.root.u.undef.abfd = h->root.root.u.def.section->owner;
 }
      else if (h->root.root.type == bfd_link_hash_common
        && (h->root.root.u.c.p->section->owner->flags & DYNAMIC) != 0)
 {




   h->root.root.type = bfd_link_hash_undefined;
   h->root.root.u.undef.abfd = h->root.root.u.c.p->section->owner;
 }
    }

  if ((abfd->flags & DYNAMIC) != 0
      && abfd->xvec == info->hash->creator
      && (h->flags & SUNOS_CONSTRUCTOR) != 0)





    section = bfd_und_section_ptr;
  else if ((flags & BSF_CONSTRUCTOR) != 0
    && (abfd->flags & DYNAMIC) == 0
    && h->root.root.type == bfd_link_hash_defined
    && h->root.root.u.def.section->owner != ((void*)0)
    && (h->root.root.u.def.section->owner->flags & DYNAMIC) != 0)



    h->root.root.type = bfd_link_hash_new;


  if (! _bfd_generic_link_add_one_symbol (info, abfd, name, flags, section,
       value, string, copy, collect,
       hashp))
    return FALSE;

  if (abfd->xvec == info->hash->creator)
    {





      if ((abfd->flags & DYNAMIC) == 0)
 {
   if (bfd_is_und_section (section))
     new_flag = SUNOS_REF_REGULAR;
   else
     new_flag = SUNOS_DEF_REGULAR;
 }
      else
 {
   if (bfd_is_und_section (section))
     new_flag = SUNOS_REF_DYNAMIC;
   else
     new_flag = SUNOS_DEF_DYNAMIC;
 }
      h->flags |= new_flag;

      if (h->dynindx == -1
   && (h->flags & (SUNOS_DEF_REGULAR | SUNOS_REF_REGULAR)) != 0)
 {
   ++sunos_hash_table (info)->dynsymcount;
   h->dynindx = -2;
 }

      if ((flags & BSF_CONSTRUCTOR) != 0
   && (abfd->flags & DYNAMIC) == 0)
 h->flags |= SUNOS_CONSTRUCTOR;
    }

  return TRUE;
}
