#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct external_exec {int dummy; } ;
typedef  int /*<<< orphan*/  file_ptr ;
typedef  scalar_t__ bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_13__ {int flags; } ;
typedef  TYPE_1__ asymbol ;
struct TYPE_16__ {int a_syms; int a_trsize; int a_drsize; int /*<<< orphan*/  a_dload; int /*<<< orphan*/  a_tload; int /*<<< orphan*/  a_balign; int /*<<< orphan*/  a_dalign; int /*<<< orphan*/  a_talign; int /*<<< orphan*/  a_entry; int /*<<< orphan*/  a_bss; int /*<<< orphan*/  a_data; int /*<<< orphan*/  a_text; int /*<<< orphan*/  a_info; } ;
struct TYPE_15__ {int /*<<< orphan*/  alignment_power; int /*<<< orphan*/  size; } ;
struct TYPE_14__ {int reloc_count; int /*<<< orphan*/  vma; int /*<<< orphan*/  alignment_power; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMAGIC ; 
 int BSF_DEBUGGING ; 
 scalar_t__ EXEC_BYTES_SIZE ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (TYPE_6__) ; 
 scalar_t__ FUNC1 (TYPE_6__) ; 
 scalar_t__ FUNC2 (TYPE_6__) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  b_out_symbol_cmp ; 
 scalar_t__ FUNC6 (void*,scalar_t__,int /*<<< orphan*/ *) ; 
 TYPE_1__** FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_6__*,struct external_exec*) ; 
 TYPE_6__* FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC13 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC14 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__**,size_t,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bfd_boolean
FUNC17 (bfd *abfd)
{
  struct external_exec swapped_hdr;
  bfd_size_type amt;

  if (! FUNC3 (abfd))
    return FALSE;

  FUNC12 (abfd)->a_info = BMAGIC;

  FUNC12 (abfd)->a_text = FUNC15 (abfd)->size;
  FUNC12 (abfd)->a_data = FUNC14 (abfd)->size;
  FUNC12 (abfd)->a_bss = FUNC13 (abfd)->size;
  FUNC12 (abfd)->a_syms = FUNC9 (abfd) * 12;
  FUNC12 (abfd)->a_entry = FUNC8 (abfd);
  FUNC12 (abfd)->a_trsize = (FUNC15 (abfd)->reloc_count) * 8;
  FUNC12 (abfd)->a_drsize = (FUNC14 (abfd)->reloc_count) * 8;

  FUNC12 (abfd)->a_talign = FUNC15 (abfd)->alignment_power;
  FUNC12 (abfd)->a_dalign = FUNC14 (abfd)->alignment_power;
  FUNC12 (abfd)->a_balign = FUNC13 (abfd)->alignment_power;

  FUNC12 (abfd)->a_tload = FUNC15 (abfd)->vma;
  FUNC12 (abfd)->a_dload = FUNC14 (abfd)->vma;

  FUNC11 (abfd, FUNC12 (abfd), &swapped_hdr);

  amt = EXEC_BYTES_SIZE;
  if (FUNC10 (abfd, (file_ptr) 0, SEEK_SET) != 0
      || FUNC6 ((void *) &swapped_hdr, amt, abfd) != amt)
    return FALSE;

  /* Now write out reloc info, followed by syms and strings */
  if (FUNC9 (abfd) != 0)
    {
      /* Make sure {CALL,BAL}NAME symbols remain adjacent on output
	 by sorting.  This is complicated by the fact that stabs are
	 also ordered.  Solve this by shifting all stabs to the end
	 in order, then sorting the rest.  */

      asymbol **outsyms, **p, **q;

      outsyms = FUNC7 (abfd);
      p = outsyms + FUNC9 (abfd);

      for (q = p--; p >= outsyms; p--)
	{
	  if ((*p)->flags & BSF_DEBUGGING)
	    {
	      asymbol *t = *--q;
	      *q = *p;
	      *p = t;
	    }
	}

      if (q > outsyms)
	FUNC16 (outsyms, (size_t) (q - outsyms), sizeof (asymbol*),
	       b_out_symbol_cmp);

      /* Back to your regularly scheduled program.  */
      if (FUNC10 (abfd, (file_ptr) (FUNC1 (*FUNC12 (abfd))), SEEK_SET)
	  != 0)
	return FALSE;

      if (! FUNC4 (abfd))
	return FALSE;

      if (FUNC10 (abfd, (file_ptr) (FUNC2 (*FUNC12 (abfd))), SEEK_SET)
	  != 0)
	return FALSE;

      if (!FUNC5 (abfd, FUNC15 (abfd)))
	return FALSE;
      if (FUNC10 (abfd, (file_ptr) (FUNC0 (*FUNC12 (abfd))), SEEK_SET)
	  != 0)
	return FALSE;

      if (!FUNC5 (abfd, FUNC14 (abfd)))
	return FALSE;
    }
  return TRUE;
}