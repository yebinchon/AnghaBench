#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct size_sym {scalar_t__ size; void const* minisym; } ;
struct TYPE_10__ {scalar_t__ st_size; } ;
struct TYPE_11__ {TYPE_1__ internal_elf_sym; } ;
typedef  TYPE_2__ elf_symbol_type ;
typedef  scalar_t__ bfd_vma ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_12__ {scalar_t__ value; } ;
typedef  TYPE_3__ asymbol ;
typedef  int /*<<< orphan*/  asection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void const*,TYPE_3__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ bfd_target_elf_flavour ; 
 int /*<<< orphan*/  FUNC8 (void*,long,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  size_forward1 ; 
 int /*<<< orphan*/  size_forward2 ; 
 TYPE_3__* sort_x ; 
 TYPE_3__* sort_y ; 
 scalar_t__ FUNC9 (TYPE_3__*) ; 
 struct size_sym* FUNC10 (long) ; 

__attribute__((used)) static long
FUNC11 (bfd *abfd, bfd_boolean dynamic, void *minisyms,
		      long symcount, unsigned int size,
		      struct size_sym **symsizesp)
{
  struct size_sym *symsizes;
  bfd_byte *from, *fromend;
  asymbol *sym = NULL;
  asymbol *store_sym, *store_next;

  FUNC8 (minisyms, symcount, size, size_forward1);

  /* We are going to return a special set of symbols and sizes to
     print.  */
  symsizes = FUNC10 (symcount * sizeof (struct size_sym));
  *symsizesp = symsizes;

  /* Note that filter_symbols has already removed all absolute and
     undefined symbols.  Here we remove all symbols whose size winds
     up as zero.  */
  from = (bfd_byte *) minisyms;
  fromend = from + symcount * size;

  store_sym = sort_x;
  store_next = sort_y;

  if (from < fromend)
    {
      sym = FUNC6 (abfd, dynamic, (const void *) from,
				      store_sym);
      if (sym == NULL)
	FUNC0 (FUNC1 (abfd));
    }

  for (; from < fromend; from += size)
    {
      asymbol *next;
      asection *sec;
      bfd_vma sz;
      asymbol *temp;

      if (from + size < fromend)
	{
	  next = FUNC6 (abfd,
					   dynamic,
					   (const void *) (from + size),
					   store_next);
	  if (next == NULL)
	    FUNC0 (FUNC1 (abfd));
	}
      else
	next = NULL;

      sec = FUNC3 (sym);

      if (FUNC2 (abfd) == bfd_target_elf_flavour)
	sz = ((elf_symbol_type *) sym)->internal_elf_sym.st_size;
      else if (FUNC5 (sec))
	sz = sym->value;
      else
	{
	  if (from + size < fromend
	      && sec == FUNC3 (next))
	    sz = FUNC9 (next) - FUNC9 (sym);
	  else
	    sz = (FUNC4 (abfd, sec)
		  + FUNC7 (abfd, sec)
		  - FUNC9 (sym));
	}

      if (sz != 0)
	{
	  symsizes->minisym = (const void *) from;
	  symsizes->size = sz;
	  ++symsizes;
	}

      sym = next;

      temp = store_sym;
      store_sym = store_next;
      store_next = temp;
    }

  symcount = symsizes - *symsizesp;

  /* We must now sort again by size.  */
  FUNC8 ((void *) *symsizesp, symcount, sizeof (struct size_sym), size_forward2);

  return symcount;
}