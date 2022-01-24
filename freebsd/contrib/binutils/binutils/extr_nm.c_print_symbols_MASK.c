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
typedef  int /*<<< orphan*/  bfd_vma ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asymbol ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5 (bfd *abfd, bfd_boolean dynamic, void *minisyms, long symcount,
	       unsigned int size, bfd *archive_bfd)
{
  asymbol *store;
  bfd_byte *from, *fromend;

  store = FUNC2 (abfd);
  if (store == NULL)
    FUNC0 (FUNC1 (abfd));

  from = (bfd_byte *) minisyms;
  fromend = from + symcount * size;
  for (; from < fromend; from += size)
    {
      asymbol *sym;

      sym = FUNC3 (abfd, dynamic, from, store);
      if (sym == NULL)
	FUNC0 (FUNC1 (abfd));

      FUNC4 (abfd, sym, (bfd_vma) 0, archive_bfd);
    }
}