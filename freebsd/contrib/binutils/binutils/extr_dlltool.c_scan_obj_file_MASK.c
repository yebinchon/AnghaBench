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
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  bfd_archive ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfd_object ; 
 int /*<<< orphan*/ * FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ mcore_elf_out_file ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9 (const char *filename)
{
  bfd * f = FUNC3 (filename, 0);

  if (!f)
    /* xgettext:c-format */
    FUNC5 (FUNC0("Unable to open object file: %s"), filename);

  /* xgettext:c-format */
  FUNC6 (FUNC0("Scanning object file %s"), filename);

  if (FUNC1 (f, bfd_archive))
    {
      bfd *arfile = FUNC4 (f, 0);
      while (arfile)
	{
	  if (FUNC1 (arfile, bfd_object))
	    FUNC8 (arfile);
	  FUNC2 (arfile);
	  arfile = FUNC4 (f, arfile);
	}

#ifdef DLLTOOL_MCORE_ELF
      if (mcore_elf_out_file)
	inform (_("Cannot produce mcore-elf dll from archive file: %s"), filename);
#endif
    }
  else if (FUNC1 (f, bfd_object))
    {
      FUNC8 (f);

#ifdef DLLTOOL_MCORE_ELF
      if (mcore_elf_out_file)
	mcore_elf_cache_filename ((char *) filename);
#endif
    }

  FUNC2 (f);
}