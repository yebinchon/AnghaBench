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
struct size_sym {scalar_t__ size; int /*<<< orphan*/  minisym; } ;
typedef  scalar_t__ bfd_vma ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asymbol ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ bfd_target_elf_flavour ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8 (bfd *abfd, bfd_boolean dynamic,
		    struct size_sym *symsizes, long symcount,
		    bfd *archive_bfd)
{
  asymbol *store;
  struct size_sym *from, *fromend;

  store = FUNC4 (abfd);
  if (store == NULL)
    FUNC0 (FUNC1 (abfd));

  from = symsizes;
  fromend = from + symcount;
  for (; from < fromend; from++)
    {
      asymbol *sym;
      bfd_vma ssize;

      sym = FUNC5 (abfd, dynamic, from->minisym, store);
      if (sym == NULL)
	FUNC0 (FUNC1 (abfd));

      /* For elf we have already computed the correct symbol size.  */
      if (FUNC2 (abfd) == bfd_target_elf_flavour)
	ssize = from->size;
      else
	ssize = from->size - FUNC6 (abfd, FUNC3 (sym));

      FUNC7 (abfd, sym, ssize, archive_bfd);
    }
}