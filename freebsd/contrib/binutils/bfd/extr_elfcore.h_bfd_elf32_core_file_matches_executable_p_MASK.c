#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_6__ {scalar_t__ xvec; char const* filename; } ;
typedef  TYPE_1__ bfd ;
struct TYPE_7__ {char* core_program; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  bfd_error_system_call ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 char* FUNC3 (char const*,char) ; 

bfd_boolean
FUNC4 (bfd *core_bfd, bfd *exec_bfd)
{
  char* corename;

  /* xvecs must match if both are ELF files for the same target.  */

  if (core_bfd->xvec != exec_bfd->xvec)
    {
      FUNC0 (bfd_error_system_call);
      return FALSE;
    }

  /* See if the name in the corefile matches the executable name.  */
  corename = FUNC1 (core_bfd)->core_program;
  if (corename != NULL)
    {
      const char* execname = FUNC3 (exec_bfd->filename, '/');

      execname = execname ? execname + 1 : exec_bfd->filename;

      if (FUNC2 (execname, corename) != 0)
	return FALSE;
    }

  return TRUE;
}