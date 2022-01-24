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
struct objfile {struct obj_section* sections_end; int /*<<< orphan*/  objfile_obstack; } ;
struct obj_section {scalar_t__ addr; scalar_t__ endaddr; scalar_t__ ovly_mapped; struct bfd_section* the_bfd_section; struct objfile* objfile; scalar_t__ offset; } ;
struct bfd_section {int dummy; } ;
struct bfd {int dummy; } ;
typedef  int /*<<< orphan*/  section ;
typedef  int flagword ;

/* Variables and functions */
 int SEC_ALLOC ; 
 int /*<<< orphan*/  FUNC0 (struct bfd_section*) ; 
 int FUNC1 (struct bfd*,struct bfd_section*) ; 
 scalar_t__ FUNC2 (struct bfd*,struct bfd_section*) ; 
 scalar_t__ FUNC3 (struct bfd*,struct bfd_section*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static void
FUNC5 (struct bfd *abfd, struct bfd_section *asect,
			 void *objfile_p_char)
{
  struct objfile *objfile = (struct objfile *) objfile_p_char;
  struct obj_section section;
  flagword aflag;

  aflag = FUNC1 (abfd, asect);

  if (!(aflag & SEC_ALLOC) && !(FUNC0 (asect)))
    return;

  if (0 == FUNC2 (abfd, asect))
    return;
  section.offset = 0;
  section.objfile = objfile;
  section.the_bfd_section = asect;
  section.ovly_mapped = 0;
  section.addr = FUNC3 (abfd, asect);
  section.endaddr = section.addr + FUNC2 (abfd, asect);
  FUNC4 (&objfile->objfile_obstack, (char *) &section, sizeof (section));
  objfile->sections_end = (struct obj_section *) (((unsigned long) objfile->sections_end) + 1);
}