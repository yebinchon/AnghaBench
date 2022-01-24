#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct so_list {struct so_list* next; } ;
struct objfile {int dummy; } ;
struct minimal_symbol {int dummy; } ;
struct breakpoint {int dummy; } ;
struct TYPE_9__ {scalar_t__ start_address; } ;
typedef  TYPE_1__ bfd ;
typedef  int /*<<< orphan*/  asection ;
struct TYPE_11__ {int /*<<< orphan*/  dld_flags; int /*<<< orphan*/  dld_flags_addr; } ;
struct TYPE_10__ {int /*<<< orphan*/  obfd; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  DT_HP_DEBUG_CALLBACK ; 
 int /*<<< orphan*/  DT_HP_DEBUG_PRIVATE ; 
 char* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  bfd_object ; 
 TYPE_1__* FUNC6 (char*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 struct breakpoint* FUNC9 (scalar_t__) ; 
 TYPE_3__ dld_cache ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  exec_bfd ; 
 int /*<<< orphan*/  gnutarget ; 
 int /*<<< orphan*/  FUNC11 (struct breakpoint*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 struct so_list* so_list_head ; 
 TYPE_2__* symfile_objfile ; 
 unsigned int FUNC15 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (struct so_list*) ; 

void
FUNC18 (void)
{
  struct minimal_symbol *msymbol;
  unsigned int dld_flags, status;
  asection *shlib_info, *interp_sect;
  char buf[4];
  struct objfile *objfile;
  CORE_ADDR anaddr;

  /* First, remove all the solib event breakpoints.  Their addresses
     may have changed since the last time we ran the program.  */
  FUNC14 ();

  if (symfile_objfile == NULL)
    return;

  /* First see if the objfile was dynamically linked.  */
  shlib_info = FUNC3 (symfile_objfile->obfd, ".dynamic");
  if (!shlib_info)
    return;

  /* It's got a .dynamic section, make sure it's not empty.  */
  if (FUNC7 (symfile_objfile->obfd, shlib_info) == 0)
    return;

  /* Read in the .dynamic section.  */
  if (! FUNC12 (shlib_info, &dld_cache))
    FUNC10 ("Unable to read the .dynamic section.");

  /* Turn on the flags we care about.  */
  dld_cache.dld_flags |= DT_HP_DEBUG_PRIVATE;
  dld_cache.dld_flags |= DT_HP_DEBUG_CALLBACK;
  status = FUNC15 (dld_cache.dld_flags_addr,
				(char *) &dld_cache.dld_flags,
				sizeof (dld_cache.dld_flags));
  if (status != 0)
    FUNC10 ("Unable to modify dynamic linker flags.");

  /* Now we have to create a shared library breakpoint in the dynamic
     linker.  This can be somewhat tricky since the symbol is inside
     the dynamic linker (for which we do not have symbols or a base
     load address!   Luckily I wrote this code for solib.c years ago.  */
  interp_sect = FUNC3 (exec_bfd, ".interp");
  if (interp_sect)
    {
      unsigned int interp_sect_size;
      char *buf;
      CORE_ADDR load_addr;
      bfd *tmp_bfd;
      CORE_ADDR sym_addr = 0;

      /* Read the contents of the .interp section into a local buffer;
	 the contents specify the dynamic linker this program uses.  */
      interp_sect_size = FUNC7 (exec_bfd, interp_sect);
      buf = FUNC0 (interp_sect_size);
      FUNC4 (exec_bfd, interp_sect,
				buf, 0, interp_sect_size);

      /* Now we need to figure out where the dynamic linker was
	 loaded so that we can load its symbols and place a breakpoint
	 in the dynamic linker itself.

	 This address is stored on the stack.  However, I've been unable
	 to find any magic formula to find it for Solaris (appears to
	 be trivial on GNU/Linux).  Therefore, we have to try an alternate
	 mechanism to find the dynamic linker's base address.  */
      tmp_bfd = FUNC6 (buf, gnutarget);
      if (tmp_bfd == NULL)
	goto get_out;

      /* Make sure the dynamic linker's really a useful object.  */
      if (!FUNC1 (tmp_bfd, bfd_object))
	{
	  FUNC16 ("Unable to grok dynamic linker %s as an object file", buf);
	  FUNC2 (tmp_bfd);
	  goto get_out;
	}

      /* We find the dynamic linker's base address by examining the
	 current pc (which point at the entry point for the dynamic
	 linker) and subtracting the offset of the entry point. 

	 Also note the breakpoint is the second instruction in the
	 routine.  */
      load_addr = FUNC13 () - tmp_bfd->start_address;
      sym_addr = FUNC5 (tmp_bfd, "__dld_break");
      sym_addr = load_addr + sym_addr + 4;
      
      /* Create the shared library breakpoint.  */
      {
	struct breakpoint *b
	  = FUNC9 (sym_addr);

	/* The breakpoint is actually hard-coded into the dynamic linker,
	   so we don't need to actually insert a breakpoint instruction
	   there.  In fact, the dynamic linker's code is immutable, even to
	   ttrace, so we shouldn't even try to do that.  For cases like
	   this, we have "permanent" breakpoints.  */
	FUNC11 (b);
      }

      /* We're done with the temporary bfd.  */
      FUNC2 (tmp_bfd);
    }

get_out:
  /* Wipe out all knowledge of old shared libraries since their
     mapping can change from one exec to another!  */
  while (so_list_head)
    {
      struct so_list *temp;

      temp = so_list_head;
      FUNC17 (so_list_head);
      so_list_head = temp->next;
    }
  FUNC8 ();
}