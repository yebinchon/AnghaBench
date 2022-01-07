
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_17__ ;
typedef struct TYPE_22__ TYPE_13__ ;
typedef struct TYPE_21__ TYPE_12__ ;


struct TYPE_25__ {char* string; } ;
struct TYPE_26__ {TYPE_2__ root; int type; } ;
struct xcoff_link_hash_entry {int flags; TYPE_4__* descriptor; TYPE_3__ root; } ;
struct internal_reloc {size_t r_symndx; int r_type; } ;
struct bfd_link_info {int keep_memory; TYPE_1__* hash; } ;
typedef int bfd_boolean ;
struct TYPE_28__ {int flags; scalar_t__ reloc_count; TYPE_7__* owner; } ;
typedef TYPE_5__ asection ;
struct TYPE_30__ {scalar_t__ xvec; } ;
struct TYPE_29__ {int first_symndx; int last_symndx; } ;
struct TYPE_27__ {int flags; } ;
struct TYPE_24__ {scalar_t__ creator; } ;
struct TYPE_23__ {int * relocs; int keep_relocs; } ;
struct TYPE_22__ {TYPE_5__** csects; } ;
struct TYPE_21__ {int ldrel_count; } ;


 int FALSE ;
 int SEC_MARK ;
 int SEC_RELOC ;
 int TRUE ;
 int XCOFF_CALLED ;
 int XCOFF_DEF_DYNAMIC ;
 int XCOFF_DEF_REGULAR ;
 int XCOFF_IMPORT ;
 int XCOFF_LDREL ;
 int XCOFF_MARK ;
 scalar_t__ bfd_is_abs_section (TYPE_5__*) ;
 int bfd_link_hash_common ;
 int bfd_link_hash_defined ;
 int bfd_link_hash_defweak ;
 int bfd_link_hash_undefined ;
 int bfd_link_hash_undefweak ;
 TYPE_17__* coff_section_data (TYPE_7__*,TYPE_5__*) ;
 int free (int *) ;
 unsigned int obj_raw_syment_count (TYPE_7__*) ;
 struct xcoff_link_hash_entry** obj_xcoff_sym_hashes (TYPE_7__*) ;
 TYPE_13__* xcoff_data (TYPE_7__*) ;
 TYPE_12__* xcoff_hash_table (struct bfd_link_info*) ;
 int xcoff_mark_symbol (struct bfd_link_info*,struct xcoff_link_hash_entry*) ;
 struct internal_reloc* xcoff_read_internal_relocs (TYPE_7__*,TYPE_5__*,int ,int *,int ,int *) ;
 TYPE_6__* xcoff_section_data (TYPE_7__*,TYPE_5__*) ;

__attribute__((used)) static bfd_boolean
xcoff_mark (struct bfd_link_info *info, asection *sec)
{
  if (bfd_is_abs_section (sec)
      || (sec->flags & SEC_MARK) != 0)
    return TRUE;

  sec->flags |= SEC_MARK;

  if (sec->owner->xvec == info->hash->creator
      && coff_section_data (sec->owner, sec) != ((void*)0)
      && xcoff_section_data (sec->owner, sec) != ((void*)0))
    {
      struct xcoff_link_hash_entry **hp, **hpend;
      struct internal_reloc *rel, *relend;


      hp = (obj_xcoff_sym_hashes (sec->owner)
     + xcoff_section_data (sec->owner, sec)->first_symndx);
      hpend = (obj_xcoff_sym_hashes (sec->owner)
        + xcoff_section_data (sec->owner, sec)->last_symndx);
      for (; hp < hpend; hp++)
 {
   struct xcoff_link_hash_entry *h;

   h = *hp;
   if (h != ((void*)0)
       && (h->flags & XCOFF_MARK) == 0)
     {
       if (! xcoff_mark_symbol (info, h))
  return FALSE;
     }
 }


      if ((sec->flags & SEC_RELOC) != 0
   && sec->reloc_count > 0)
 {
   rel = xcoff_read_internal_relocs (sec->owner, sec, TRUE,
         ((void*)0), FALSE, ((void*)0));
   if (rel == ((void*)0))
     return FALSE;
   relend = rel + sec->reloc_count;
   for (; rel < relend; rel++)
     {
       asection *rsec;
       struct xcoff_link_hash_entry *h;

       if ((unsigned int) rel->r_symndx
    > obj_raw_syment_count (sec->owner))
  continue;

       h = obj_xcoff_sym_hashes (sec->owner)[rel->r_symndx];
       if (h != ((void*)0)
    && (h->flags & XCOFF_MARK) == 0)
  {
    if (! xcoff_mark_symbol (info, h))
      return FALSE;
  }

       rsec = xcoff_data (sec->owner)->csects[rel->r_symndx];
       if (rsec != ((void*)0)
    && (rsec->flags & SEC_MARK) == 0)
  {
    if (! xcoff_mark (info, rsec))
      return FALSE;
  }



       switch (rel->r_type)
  {
  default:
    if (h == ((void*)0)
        || h->root.type == bfd_link_hash_defined
        || h->root.type == bfd_link_hash_defweak
        || h->root.type == bfd_link_hash_common
        || ((h->flags & XCOFF_CALLED) != 0
     && (h->root.type == bfd_link_hash_undefined
         || h->root.type == bfd_link_hash_undefweak)
     && h->root.root.string[0] == '.'
     && h->descriptor != ((void*)0)
     && ((h->descriptor->flags & XCOFF_DEF_DYNAMIC) != 0
         || ((h->descriptor->flags & XCOFF_IMPORT) != 0
      && (h->descriptor->flags
          & XCOFF_DEF_REGULAR) == 0))))
      break;

  case 134:
  case 135:
  case 133:
  case 132:
    ++xcoff_hash_table (info)->ldrel_count;
    if (h != ((void*)0))
      h->flags |= XCOFF_LDREL;
    break;
  case 130:
  case 136:
  case 131:
  case 129:
  case 128:


    break;
  }
     }

   if (! info->keep_memory
       && coff_section_data (sec->owner, sec) != ((void*)0)
       && coff_section_data (sec->owner, sec)->relocs != ((void*)0)
       && ! coff_section_data (sec->owner, sec)->keep_relocs)
     {
       free (coff_section_data (sec->owner, sec)->relocs);
       coff_section_data (sec->owner, sec)->relocs = ((void*)0);
     }
 }
    }

  return TRUE;
}
