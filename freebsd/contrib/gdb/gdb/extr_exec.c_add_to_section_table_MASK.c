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
struct section_table {scalar_t__ addr; scalar_t__ endaddr; struct bfd_section* the_bfd_section; int /*<<< orphan*/ * bfd; } ;
struct bfd_section {int dummy; } ;
typedef  int flagword ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int SEC_ALLOC ; 
 int FUNC0 (int /*<<< orphan*/ *,struct bfd_section*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,struct bfd_section*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,struct bfd_section*) ; 

__attribute__((used)) static void
FUNC3 (bfd *abfd, struct bfd_section *asect,
		      void *table_pp_char)
{
  struct section_table **table_pp = (struct section_table **) table_pp_char;
  flagword aflag;

  aflag = FUNC0 (abfd, asect);
  if (!(aflag & SEC_ALLOC))
    return;
  if (0 == FUNC1 (abfd, asect))
    return;
  (*table_pp)->bfd = abfd;
  (*table_pp)->the_bfd_section = asect;
  (*table_pp)->addr = FUNC2 (abfd, asect);
  (*table_pp)->endaddr = (*table_pp)->addr + FUNC1 (abfd, asect);
  (*table_pp)++;
}