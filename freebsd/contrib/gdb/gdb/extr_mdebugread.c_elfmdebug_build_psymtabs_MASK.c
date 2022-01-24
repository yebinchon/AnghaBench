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
struct objfile {int /*<<< orphan*/  objfile_obstack; int /*<<< orphan*/ * obfd; } ;
struct ecoff_debug_swap {int /*<<< orphan*/  (* read_debug_info ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct ecoff_debug_info*) ;} ;
struct ecoff_debug_info {int dummy; } ;
struct cleanup {int dummy; } ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct objfile*) ; 
 struct cleanup* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct objfile*,struct ecoff_debug_swap const*,struct ecoff_debug_info*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct ecoff_debug_info*) ; 

void
FUNC10 (struct objfile *objfile,
			  const struct ecoff_debug_swap *swap, asection *sec)
{
  bfd *abfd = objfile->obfd;
  struct ecoff_debug_info *info;
  struct cleanup *back_to;

  /* FIXME: It's not clear whether we should be getting minimal symbol
     information from .mdebug in an ELF file, or whether we will.
     Re-initialize the minimal symbol reader in case we do.  */

  FUNC4 ();
  back_to = FUNC6 ();

  info = ((struct ecoff_debug_info *)
	  FUNC8 (&objfile->objfile_obstack,
			 sizeof (struct ecoff_debug_info)));

  if (!(*swap->read_debug_info) (abfd, sec, info))
    FUNC3 ("Error reading ECOFF debugging information: %s",
	   FUNC0 (FUNC1 ()));

  FUNC7 (objfile, swap, info);

  FUNC5 (objfile);
  FUNC2 (back_to);
}