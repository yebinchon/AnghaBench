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
struct stab_section_list {struct stab_section_list* next; int /*<<< orphan*/ * section; } ;
struct coff_symfile_info {struct stab_section_list* stabsects; int /*<<< orphan*/ * stabstrsect; int /*<<< orphan*/  textsize; int /*<<< orphan*/  textaddr; } ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asection ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct stab_section_list*) ; 
 scalar_t__ FUNC6 (char const*,char*,int) ; 
 int /*<<< orphan*/  xfree ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void
FUNC8 (bfd *abfd, asection *sectp, void *csip)
{
  struct coff_symfile_info *csi;
  const char *name;

  csi = (struct coff_symfile_info *) csip;
  name = FUNC1 (abfd, sectp);
  if (FUNC0 (name, ".text"))
    {
      csi->textaddr = FUNC3 (abfd, sectp);
      csi->textsize += FUNC2 (abfd, sectp);
    }
  else if (FUNC6 (name, ".text", sizeof ".text" - 1) == 0)
    {
      csi->textsize += FUNC2 (abfd, sectp);
    }
  else if (FUNC0 (name, ".stabstr"))
    {
      csi->stabstrsect = sectp;
    }
  else if (FUNC6 (name, ".stab", sizeof ".stab" - 1) == 0)
    {
      const char *s;

      /* We can have multiple .stab sections if linked with
         --split-by-reloc.  */
      for (s = name + sizeof ".stab" - 1; *s != '\0'; s++)
	if (!FUNC4 (*s))
	  break;
      if (*s == '\0')
	{
	  struct stab_section_list *n, **pn;

	  n = ((struct stab_section_list *)
	       FUNC7 (sizeof (struct stab_section_list)));
	  n->section = sectp;
	  n->next = NULL;
	  for (pn = &csi->stabsects; *pn != NULL; pn = &(*pn)->next)
	    ;
	  *pn = n;

	  /* This will be run after coffstab_build_psymtabs is called
	     in coff_symfile_read, at which point we no longer need
	     the information.  */
	  FUNC5 (xfree, n);
	}
    }
}