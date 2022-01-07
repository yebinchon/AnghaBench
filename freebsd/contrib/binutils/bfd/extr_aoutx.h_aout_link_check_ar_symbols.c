
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct external_nlist {int e_value; int e_strx; int e_type; } ;
struct bfd_link_info {int common_skip_ar_aymbols; TYPE_4__* callbacks; TYPE_5__* hash; } ;
struct TYPE_9__ {scalar_t__ size; TYPE_6__* p; } ;
struct TYPE_8__ {int * abfd; } ;
struct TYPE_10__ {TYPE_2__ c; TYPE_1__ undef; } ;
struct bfd_link_hash_entry {scalar_t__ type; TYPE_3__ u; } ;
struct bfd_link_hash_common_entry {int dummy; } ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_14__ {unsigned int section_align_power; } ;
struct TYPE_13__ {unsigned int alignment_power; int section; } ;
struct TYPE_12__ {int table; } ;
struct TYPE_11__ {int (* add_archive_element ) (struct bfd_link_info*,int *,char const*) ;} ;


 int FALSE ;
 int GET_WORD (int *,int ) ;
 int H_GET_8 (int *,int ) ;
 int N_ABS ;
 int N_BSS ;
 int N_DATA ;
 int N_EXT ;
 int N_FN ;
 int N_INDR ;
 int N_STAB ;
 int N_TEXT ;
 int N_UNDF ;
 int N_WARNING ;
 int N_WEAKA ;
 int N_WEAKB ;
 int N_WEAKD ;
 int N_WEAKT ;
 int TRUE ;
 TYPE_7__* bfd_get_arch_info (int *) ;
 TYPE_6__* bfd_hash_allocate (int *,int) ;



 scalar_t__ bfd_link_hash_common ;
 struct bfd_link_hash_entry* bfd_link_hash_lookup (TYPE_5__*,char const*,int ,int ,int ) ;
 scalar_t__ bfd_link_hash_undefined ;
 unsigned int bfd_log2 (scalar_t__) ;
 int bfd_make_section_old_way (int *,char*) ;
 char* obj_aout_external_strings (int *) ;
 int obj_aout_external_sym_count (int *) ;
 struct external_nlist* obj_aout_external_syms (int *) ;
 int stub1 (struct bfd_link_info*,int *,char const*) ;
 int stub2 (struct bfd_link_info*,int *,char const*) ;
 int stub3 (struct bfd_link_info*,int *,char const*) ;

__attribute__((used)) static bfd_boolean
aout_link_check_ar_symbols (bfd *abfd,
       struct bfd_link_info *info,
       bfd_boolean *pneeded)
{
  struct external_nlist *p;
  struct external_nlist *pend;
  char *strings;

  *pneeded = FALSE;


  p = obj_aout_external_syms (abfd);
  pend = p + obj_aout_external_sym_count (abfd);
  strings = obj_aout_external_strings (abfd);
  for (; p < pend; p++)
    {
      int type = H_GET_8 (abfd, p->e_type);
      const char *name;
      struct bfd_link_hash_entry *h;




      if (((type & N_EXT) == 0
    || (type & N_STAB) != 0
    || type == N_FN)
   && type != N_WEAKA
   && type != N_WEAKT
   && type != N_WEAKD
   && type != N_WEAKB)
 {
   if (type == N_WARNING
       || type == N_INDR)
     ++p;
   continue;
 }

      name = strings + GET_WORD (abfd, p->e_strx);
      h = bfd_link_hash_lookup (info->hash, name, FALSE, FALSE, TRUE);



      if (h == ((void*)0)
   || (h->type != bfd_link_hash_undefined
       && h->type != bfd_link_hash_common))
 {
   if (type == (N_INDR | N_EXT))
     ++p;
   continue;
 }

      if (type == (N_TEXT | N_EXT)
   || type == (N_DATA | N_EXT)
   || type == (N_BSS | N_EXT)
   || type == (N_ABS | N_EXT)
   || type == (N_INDR | N_EXT))
 {
   if (h->type == bfd_link_hash_common)
     {
       int skip = 0;

       switch (info->common_skip_ar_aymbols)
  {
  case 128:
    skip = (type == (N_TEXT | N_EXT));
    break;
  case 129:
    skip = (type == (N_DATA | N_EXT));
    break;
  default:
  case 130:
    skip = 1;
    break;
  }

       if (skip)
  continue;
     }

   if (! (*info->callbacks->add_archive_element) (info, abfd, name))
     return FALSE;
   *pneeded = TRUE;
   return TRUE;
 }

      if (type == (N_UNDF | N_EXT))
 {
   bfd_vma value;

   value = GET_WORD (abfd, p->e_value);
   if (value != 0)
     {


       if (h->type == bfd_link_hash_undefined)
  {
    bfd *symbfd;
    unsigned int power;

    symbfd = h->u.undef.abfd;
    if (symbfd == ((void*)0))
      {




        if (! (*info->callbacks->add_archive_element) (info,
             abfd,
             name))
   return FALSE;
        *pneeded = TRUE;
        return TRUE;
      }


    h->type = bfd_link_hash_common;
    h->u.c.p = bfd_hash_allocate (&info->hash->table,
      sizeof (struct bfd_link_hash_common_entry));
    if (h->u.c.p == ((void*)0))
      return FALSE;

    h->u.c.size = value;





    power = bfd_log2 (value);
    if (power > bfd_get_arch_info (abfd)->section_align_power)
      power = bfd_get_arch_info (abfd)->section_align_power;
    h->u.c.p->alignment_power = power;

    h->u.c.p->section = bfd_make_section_old_way (symbfd,
        "COMMON");
  }
       else
  {


    if (value > h->u.c.size)
      h->u.c.size = value;
  }
     }
 }

      if (type == N_WEAKA
   || type == N_WEAKT
   || type == N_WEAKD
   || type == N_WEAKB)
 {



   if (h->type == bfd_link_hash_undefined)
     {
       if (! (*info->callbacks->add_archive_element) (info, abfd, name))
  return FALSE;
       *pneeded = TRUE;
       return TRUE;
     }
 }
    }


  return TRUE;
}
