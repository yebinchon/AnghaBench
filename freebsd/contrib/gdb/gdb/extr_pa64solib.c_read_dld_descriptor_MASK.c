#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct target_ops {int dummy; } ;
typedef  int /*<<< orphan*/  asection ;
struct TYPE_5__ {int have_read_dld_descriptor; int /*<<< orphan*/  dld_desc; int /*<<< orphan*/  load_map; int /*<<< orphan*/  load_map_addr; int /*<<< orphan*/  is_valid; } ;
struct TYPE_4__ {int /*<<< orphan*/  obfd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct target_ops*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__ dld_cache ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  pa64_target_read_memory ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_1__* symfile_objfile ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC7 (struct target_ops *target, int readsyms)
{
  char *dll_path;
  asection *dyninfo_sect;

  /* If necessary call read_dynamic_info to extract the contents of the
     .dynamic section from the shared library.  */
  if (!dld_cache.is_valid) 
    {
      if (symfile_objfile == NULL)
	FUNC4 ("No object file symbols.");

      dyninfo_sect = FUNC1 (symfile_objfile->obfd, 
					      ".dynamic");
      if (!dyninfo_sect) 
	{
	  return 0;
	}

      if (!FUNC5 (dyninfo_sect, &dld_cache))
	FUNC4 ("Unable to read in .dynamic section information.");
    }

  /* Read the load map pointer.  */
  if (FUNC6 (dld_cache.load_map_addr,
			  (char*) &dld_cache.load_map,
			  sizeof(dld_cache.load_map))
      != 0)
    {
      FUNC4 ("Error while reading in load map pointer.");
    }

  /* Read in the dld load module descriptor */
  if (FUNC2 (-1, 
		    &dld_cache.dld_desc,
		    sizeof(dld_cache.dld_desc), 
		    pa64_target_read_memory, 
		    0, 
		    dld_cache.load_map)
      == 0)
    {
      FUNC4 ("Error trying to get information about dynamic linker.");
    }

  /* Indicate that we have loaded the dld descriptor.  */
  dld_cache.have_read_dld_descriptor = 1;

  /* Add dld.sl to the list of known shared libraries so that we can
     do unwind, etc. 

     ?!? This may not be correct.  Consider of dld.sl contains symbols
     which are also referenced/defined by the user program or some user
     shared library.  We need to make absolutely sure that we do not
     pollute the namespace from GDB's point of view.  */
  dll_path = FUNC3 (&dld_cache.dld_desc, 
			sizeof(dld_cache.dld_desc), 
			pa64_target_read_memory, 
			0, 
			dld_cache.load_map);
  FUNC0(0, dll_path, readsyms, &dld_cache.dld_desc, 0, target);
  
  return 1;
}