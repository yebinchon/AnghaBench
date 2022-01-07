
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct score_got_info {int * got_entries; int * next; void* assigned_gotno; void* local_gotno; scalar_t__ global_gotno; int * global_gotsym; } ;
struct elf_link_hash_entry {int def_regular; int type; scalar_t__ non_elf; } ;
struct bfd_link_info {scalar_t__ shared; } ;
struct bfd_link_hash_entry {int dummy; } ;
typedef int flagword ;
typedef int bfd_size_type ;
typedef scalar_t__ bfd_boolean ;
typedef int bfd ;
struct TYPE_15__ {int flags; } ;
typedef TYPE_4__ asection ;
struct TYPE_17__ {int collect; } ;
struct TYPE_13__ {int sh_flags; } ;
struct TYPE_14__ {TYPE_2__ this_hdr; } ;
struct TYPE_12__ {struct score_got_info* got_info; } ;
struct TYPE_16__ {TYPE_3__ elf; TYPE_1__ u; } ;


 int BSF_GLOBAL ;
 scalar_t__ FALSE ;
 void* SCORE_RESERVED_GOTNO ;
 int SEC_ALLOC ;
 int SEC_EXCLUDE ;
 int SEC_HAS_CONTENTS ;
 int SEC_IN_MEMORY ;
 int SEC_LINKER_CREATED ;
 int SEC_LOAD ;
 int SHF_ALLOC ;
 int SHF_SCORE_GPREL ;
 int SHF_WRITE ;
 int STT_OBJECT ;
 scalar_t__ TRUE ;
 int _bfd_generic_link_add_one_symbol (struct bfd_link_info*,int *,char*,int ,TYPE_4__*,int ,int *,scalar_t__,int ,struct bfd_link_hash_entry**) ;
 struct score_got_info* bfd_alloc (int *,int) ;
 int bfd_elf_link_record_dynamic_symbol (struct bfd_link_info*,struct elf_link_hash_entry*) ;
 TYPE_4__* bfd_make_section_with_flags (int *,char*,int) ;
 int bfd_set_section_alignment (int *,TYPE_4__*,int) ;
 TYPE_8__* get_elf_backend_data (int *) ;
 int * htab_try_create (int,int ,int ,int *) ;
 int score_elf_got_entry_eq ;
 int score_elf_got_entry_hash ;
 TYPE_4__* score_elf_got_section (int *,scalar_t__) ;
 TYPE_5__* score_elf_section_data (TYPE_4__*) ;

__attribute__((used)) static bfd_boolean
score_elf_create_got_section (bfd *abfd,
                              struct bfd_link_info *info,
         bfd_boolean maybe_exclude)
{
  flagword flags;
  asection *s;
  struct elf_link_hash_entry *h;
  struct bfd_link_hash_entry *bh;
  struct score_got_info *g;
  bfd_size_type amt;


  s = score_elf_got_section (abfd, TRUE);
  if (s)
    {
      if (! maybe_exclude)
 s->flags &= ~SEC_EXCLUDE;
      return TRUE;
    }

  flags = (SEC_ALLOC | SEC_LOAD | SEC_HAS_CONTENTS | SEC_IN_MEMORY | SEC_LINKER_CREATED);

  if (maybe_exclude)
    flags |= SEC_EXCLUDE;



  s = bfd_make_section_with_flags (abfd, ".got", flags);
   if (s == ((void*)0)
      || ! bfd_set_section_alignment (abfd, s, 4))
    return FALSE;




  bh = ((void*)0);
  if (! (_bfd_generic_link_add_one_symbol
  (info, abfd, "_GLOBAL_OFFSET_TABLE_", BSF_GLOBAL, s,
   0, ((void*)0), FALSE, get_elf_backend_data (abfd)->collect, &bh)))
    return FALSE;

  h = (struct elf_link_hash_entry *) bh;
  h->non_elf = 0;
  h->def_regular = 1;
  h->type = STT_OBJECT;

  if (info->shared && ! bfd_elf_link_record_dynamic_symbol (info, h))
    return FALSE;

  amt = sizeof (struct score_got_info);
  g = bfd_alloc (abfd, amt);
  if (g == ((void*)0))
    return FALSE;

  g->global_gotsym = ((void*)0);
  g->global_gotno = 0;

  g->local_gotno = SCORE_RESERVED_GOTNO;
  g->assigned_gotno = SCORE_RESERVED_GOTNO;
  g->next = ((void*)0);

  g->got_entries = htab_try_create (1, score_elf_got_entry_hash,
        score_elf_got_entry_eq, ((void*)0));
  if (g->got_entries == ((void*)0))
    return FALSE;
  score_elf_section_data (s)->u.got_info = g;
  score_elf_section_data (s)->elf.this_hdr.sh_flags |= SHF_ALLOC | SHF_WRITE | SHF_SCORE_GPREL;

  return TRUE;
}
