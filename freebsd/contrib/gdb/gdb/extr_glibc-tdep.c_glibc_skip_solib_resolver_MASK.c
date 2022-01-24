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
struct objfile {int dummy; } ;
struct minimal_symbol {int dummy; } ;
struct gdbarch {int dummy; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct minimal_symbol*) ; 
 struct minimal_symbol* FUNC1 (char*,struct objfile**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct minimal_symbol* FUNC4 (char*,int /*<<< orphan*/ *,struct objfile*) ; 

CORE_ADDR
FUNC5 (struct gdbarch *gdbarch, CORE_ADDR pc)
{
  /* The GNU dynamic linker is part of the GNU C library, and is used
     by all GNU systems (GNU/Hurd, GNU/Linux).  An unresolved PLT
     entry points to "_dl_runtime_resolve", which calls "fixup" to
     patch the PLT, and then passes control to the function.

     We look for the symbol `_dl_runtime_resolve', and find `fixup' in
     the same objfile.  If we are at the entry point of `fixup', then
     we set a breakpoint at the return address (at the top of the
     stack), and continue.
  
     It's kind of gross to do all these checks every time we're
     called, since they don't change once the executable has gotten
     started.  But this is only a temporary hack --- upcoming versions
     of GNU/Linux will provide a portable, efficient interface for
     debugging programs that use shared libraries.  */

  struct objfile *objfile;
  struct minimal_symbol *resolver 
    = FUNC1 ("_dl_runtime_resolve", &objfile);

  if (resolver)
    {
      struct minimal_symbol *fixup
	= FUNC4 ("fixup", NULL, objfile);

      if (fixup && FUNC0 (fixup) == pc)
	return FUNC2 (FUNC3 ());
    }

  return 0;
}