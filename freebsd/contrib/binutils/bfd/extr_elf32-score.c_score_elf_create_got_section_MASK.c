#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct score_got_info {int /*<<< orphan*/ * got_entries; int /*<<< orphan*/ * next; void* assigned_gotno; void* local_gotno; scalar_t__ global_gotno; int /*<<< orphan*/ * global_gotsym; } ;
struct elf_link_hash_entry {int def_regular; int /*<<< orphan*/  type; scalar_t__ non_elf; } ;
struct bfd_link_info {scalar_t__ shared; } ;
struct bfd_link_hash_entry {int dummy; } ;
typedef  int flagword ;
typedef  int bfd_size_type ;
typedef  scalar_t__ bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_15__ {int flags; } ;
typedef  TYPE_4__ asection ;
struct TYPE_17__ {int /*<<< orphan*/  collect; } ;
struct TYPE_13__ {int sh_flags; } ;
struct TYPE_14__ {TYPE_2__ this_hdr; } ;
struct TYPE_12__ {struct score_got_info* got_info; } ;
struct TYPE_16__ {TYPE_3__ elf; TYPE_1__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSF_GLOBAL ; 
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
 int /*<<< orphan*/  STT_OBJECT ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct bfd_link_info*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,struct bfd_link_hash_entry**) ; 
 struct score_got_info* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bfd_link_info*,struct elf_link_hash_entry*) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 TYPE_8__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  score_elf_got_entry_eq ; 
 int /*<<< orphan*/  score_elf_got_entry_hash ; 
 TYPE_4__* FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_5__* FUNC8 (TYPE_4__*) ; 

__attribute__((used)) static bfd_boolean
FUNC9 (bfd *abfd,
                              struct bfd_link_info *info,
			      bfd_boolean maybe_exclude)
{
  flagword flags;
  asection *s;
  struct elf_link_hash_entry *h;
  struct bfd_link_hash_entry *bh;
  struct score_got_info *g;
  bfd_size_type amt;

  /* This function may be called more than once.  */
  s = FUNC7 (abfd, TRUE);
  if (s)
    {
      if (! maybe_exclude)
	s->flags &= ~SEC_EXCLUDE;
      return TRUE;
    }

  flags = (SEC_ALLOC | SEC_LOAD | SEC_HAS_CONTENTS | SEC_IN_MEMORY | SEC_LINKER_CREATED);

  if (maybe_exclude)
    flags |= SEC_EXCLUDE;

  /* We have to use an alignment of 2**4 here because this is hardcoded
     in the function stub generation and in the linker script.  */
  s = FUNC3 (abfd, ".got", flags);
   if (s == NULL
      || ! FUNC4 (abfd, s, 4))
    return FALSE;

  /* Define the symbol _GLOBAL_OFFSET_TABLE_.  We don't do this in the
     linker script because we don't want to define the symbol if we
     are not creating a global offset table.  */
  bh = NULL;
  if (! (FUNC0
	 (info, abfd, "_GLOBAL_OFFSET_TABLE_", BSF_GLOBAL, s,
	  0, NULL, FALSE, FUNC5 (abfd)->collect, &bh)))
    return FALSE;

  h = (struct elf_link_hash_entry *) bh;
  h->non_elf = 0;
  h->def_regular = 1;
  h->type = STT_OBJECT;

  if (info->shared && ! FUNC2 (info, h))
    return FALSE;

  amt = sizeof (struct score_got_info);
  g = FUNC1 (abfd, amt);
  if (g == NULL)
    return FALSE;

  g->global_gotsym = NULL;
  g->global_gotno = 0;

  g->local_gotno = SCORE_RESERVED_GOTNO;
  g->assigned_gotno = SCORE_RESERVED_GOTNO;
  g->next = NULL;

  g->got_entries = FUNC6 (1, score_elf_got_entry_hash,
				    score_elf_got_entry_eq, NULL);
  if (g->got_entries == NULL)
    return FALSE;
  FUNC8 (s)->u.got_info = g;
  FUNC8 (s)->elf.this_hdr.sh_flags |= SHF_ALLOC | SHF_WRITE | SHF_SCORE_GPREL;

  return TRUE;
}