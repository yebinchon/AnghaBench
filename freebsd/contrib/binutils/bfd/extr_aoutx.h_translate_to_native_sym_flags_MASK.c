#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct external_nlist {int* e_type; int /*<<< orphan*/  e_value; } ;
typedef  scalar_t__ bfd_vma ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_16__ {int flags; int /*<<< orphan*/ * name; scalar_t__ value; } ;
typedef  TYPE_1__ asymbol ;
struct TYPE_17__ {scalar_t__ vma; struct TYPE_17__* output_section; scalar_t__ output_offset; } ;
typedef  TYPE_2__ asection ;
struct TYPE_18__ {int type; } ;
typedef  TYPE_3__ aout_symbol_type ;

/* Variables and functions */
 int BSF_CONSTRUCTOR ; 
 int BSF_DEBUGGING ; 
 int BSF_GLOBAL ; 
 int BSF_LOCAL ; 
 int BSF_WARNING ; 
 int BSF_WEAK ; 
 int /*<<< orphan*/  FALSE ; 
#define  N_ABS 132 
#define  N_BSS 131 
#define  N_DATA 130 
 int N_EXT ; 
 int N_INDR ; 
 int N_SETA ; 
 int N_SETB ; 
 int N_SETD ; 
 int N_SETT ; 
#define  N_TEXT 129 
 int N_TYPE ; 
#define  N_UNDF 128 
 int N_WARNING ; 
 int N_WEAKA ; 
 int N_WEAKB ; 
 int N_WEAKD ; 
 int N_WEAKT ; 
 int N_WEAKU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  bfd_error_nonrepresentable_section ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 
 scalar_t__ FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC13 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bfd_boolean
FUNC17 (bfd *abfd,
			       asymbol *cache_ptr,
			       struct external_nlist *sym_pointer)
{
  bfd_vma value = cache_ptr->value;
  asection *sec;
  bfd_vma off;

  /* Mask out any existing type bits in case copying from one section
     to another.  */
  sym_pointer->e_type[0] &= ~N_TYPE;

  sec = FUNC5 (cache_ptr);
  off = 0;

  if (sec == NULL)
    {
      /* This case occurs, e.g., for the *DEBUG* section of a COFF
	 file.  */
      FUNC2)
	(FUNC1("%s: can not represent section for symbol `%s' in a.out object file format"),
	 FUNC4 (abfd),
	 cache_ptr->name != NULL ? cache_ptr->name : FUNC1("*unknown*"));
      FUNC11 (bfd_error_nonrepresentable_section);
      return FALSE;
    }

  if (sec->output_section != NULL)
    {
      off = sec->output_offset;
      sec = sec->output_section;
    }

  if (FUNC7 (sec))
    sym_pointer->e_type[0] |= N_ABS;
  else if (sec == FUNC14 (abfd))
    sym_pointer->e_type[0] |= N_TEXT;
  else if (sec == FUNC13 (abfd))
    sym_pointer->e_type[0] |= N_DATA;
  else if (sec == FUNC12 (abfd))
    sym_pointer->e_type[0] |= N_BSS;
  else if (FUNC10 (sec))
    sym_pointer->e_type[0] = N_UNDF | N_EXT;
  else if (FUNC9 (sec))
    sym_pointer->e_type[0] = N_INDR;
  else if (FUNC8 (sec))
    sym_pointer->e_type[0] = N_UNDF | N_EXT;
  else
    {
      if (FUNC3 (abfd, sec))
	sym_pointer->e_type[0] |= N_TEXT;
      else
	{
          FUNC2)
	   (FUNC1("%s: can not represent section `%s' in a.out object file format"),
	     FUNC4 (abfd), FUNC6 (abfd, sec));
          FUNC11 (bfd_error_nonrepresentable_section);
          return FALSE;
	}
    }

  /* Turn the symbol from section relative to absolute again.  */
  value += sec->vma + off;

  if ((cache_ptr->flags & BSF_WARNING) != 0)
    sym_pointer->e_type[0] = N_WARNING;

  if ((cache_ptr->flags & BSF_DEBUGGING) != 0)
    sym_pointer->e_type[0] = ((aout_symbol_type *) cache_ptr)->type;
  else if ((cache_ptr->flags & BSF_GLOBAL) != 0)
    sym_pointer->e_type[0] |= N_EXT;
  else if ((cache_ptr->flags & BSF_LOCAL) != 0)
    sym_pointer->e_type[0] &= ~N_EXT;

  if ((cache_ptr->flags & BSF_CONSTRUCTOR) != 0)
    {
      int type = ((aout_symbol_type *) cache_ptr)->type;

      switch (type)
	{
	case N_ABS:	type = N_SETA; break;
	case N_TEXT:	type = N_SETT; break;
	case N_DATA:	type = N_SETD; break;
	case N_BSS:	type = N_SETB; break;
	}
      sym_pointer->e_type[0] = type;
    }

  if ((cache_ptr->flags & BSF_WEAK) != 0)
    {
      int type;

      switch (sym_pointer->e_type[0] & N_TYPE)
	{
	default:
	case N_ABS:	type = N_WEAKA; break;
	case N_TEXT:	type = N_WEAKT; break;
	case N_DATA:	type = N_WEAKD; break;
	case N_BSS:	type = N_WEAKB; break;
	case N_UNDF:	type = N_WEAKU; break;
	}
      sym_pointer->e_type[0] = type;
    }

  FUNC0 (abfd, value, sym_pointer->e_value);

  return TRUE;
}