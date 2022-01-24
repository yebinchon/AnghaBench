#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct size_sym {int dummy; } ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asymbol ;

/* Variables and functions */
 int HAS_SYMS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 long FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 long FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 long FUNC6 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ **,long,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 void* FUNC7 (int /*<<< orphan*/ *) ; 
 long FUNC8 (int /*<<< orphan*/ *,scalar_t__,void**,unsigned int*) ; 
 scalar_t__ dynamic ; 
 long FUNC9 (int /*<<< orphan*/ *,scalar_t__,void*,long,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,void*,long) ; 
 int /*<<< orphan*/  no_sort ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__,struct size_sym*,long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,scalar_t__,void*,long,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (void*,long,unsigned int,int /*<<< orphan*/ ) ; 
 size_t reverse_sort ; 
 scalar_t__ show_synthetic ; 
 int /*<<< orphan*/ * sort_bfd ; 
 int /*<<< orphan*/  sort_by_size ; 
 scalar_t__ sort_dynamic ; 
 size_t sort_numerically ; 
 long FUNC16 (int /*<<< orphan*/ *,scalar_t__,void*,long,unsigned int,struct size_sym**) ; 
 int /*<<< orphan*/ * sort_x ; 
 int /*<<< orphan*/ * sort_y ; 
 int /*<<< orphan*/ ** sorters ; 
 void* FUNC17 (long) ; 

__attribute__((used)) static void
FUNC18 (bfd *abfd, bfd *archive_bfd)
{
  long symcount;
  void *minisyms;
  unsigned int size;
  struct size_sym *symsizes;

  if (! dynamic)
    {
      if (!(FUNC4 (abfd) & HAS_SYMS))
	{
	  FUNC12 (FUNC0("%s: no symbols"), FUNC5 (abfd));
	  return;
	}
    }

  symcount = FUNC8 (abfd, dynamic, &minisyms, &size);
  if (symcount < 0)
    FUNC2 (FUNC5 (abfd));

  if (symcount == 0)
    {
      FUNC12 (FUNC0("%s: no symbols"), FUNC5 (abfd));
      return;
    }

  if (show_synthetic && size == sizeof (asymbol *))
    {
      asymbol *synthsyms;
      long synth_count;
      asymbol **static_syms = NULL;
      asymbol **dyn_syms = NULL;
      long static_count = 0;
      long dyn_count = 0;

      if (dynamic)
	{
	  dyn_count = symcount;
	  dyn_syms = minisyms;
	}
      else
	{
	  long storage = FUNC3 (abfd);

	  static_count = symcount;
	  static_syms = minisyms;

	  if (storage > 0)
	    {
	      dyn_syms = FUNC17 (storage);
	      dyn_count = FUNC1 (abfd, dyn_syms);
	      if (dyn_count < 0)
		FUNC2 (FUNC5 (abfd));
	    }
	}
      synth_count = FUNC6 (abfd, static_count, static_syms,
					      dyn_count, dyn_syms, &synthsyms);
      if (synth_count > 0)
	{
	  asymbol **symp;
	  void *new_mini;
	  long i;

	  new_mini = FUNC17 ((symcount + synth_count + 1) * sizeof (*symp));
	  symp = new_mini;
	  FUNC11 (symp, minisyms, symcount * sizeof (*symp));
	  symp += symcount;
	  for (i = 0; i < synth_count; i++)
	    *symp++ = synthsyms + i;
	  *symp = 0;
	  minisyms = new_mini;
	  symcount += synth_count;
	}
    }

  /* Discard the symbols we don't want to print.
     It's OK to do this in place; we'll free the storage anyway
     (after printing).  */

  symcount = FUNC9 (abfd, dynamic, minisyms, symcount, size);

  symsizes = NULL;
  if (! no_sort)
    {
      sort_bfd = abfd;
      sort_dynamic = dynamic;
      sort_x = FUNC7 (abfd);
      sort_y = FUNC7 (abfd);
      if (sort_x == NULL || sort_y == NULL)
	FUNC2 (FUNC5 (abfd));

      if (! sort_by_size)
	FUNC15 (minisyms, symcount, size,
	       sorters[sort_numerically][reverse_sort]);
      else
	symcount = FUNC16 (abfd, dynamic, minisyms, symcount,
					 size, &symsizes);
    }

  if (! sort_by_size)
    FUNC14 (abfd, dynamic, minisyms, symcount, size, archive_bfd);
  else
    FUNC13 (abfd, dynamic, symsizes, symcount, archive_bfd);

  FUNC10 (minisyms);
}