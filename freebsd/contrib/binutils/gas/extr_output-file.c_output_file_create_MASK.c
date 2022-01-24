#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ bfd_error_type ;
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFD_TRADITIONAL_FORMAT ; 
 int /*<<< orphan*/  TARGET_ARCH ; 
 int /*<<< orphan*/  TARGET_FORMAT ; 
 int /*<<< orphan*/  TARGET_MACH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ bfd_error_invalid_target ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  bfd_object ; 
 TYPE_1__* FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ flag_traditional_format ; 
 TYPE_1__* stdoutput ; 

void
FUNC7 (char *name)
{
  if (name[0] == '-' && name[1] == '\0')
    FUNC1 (FUNC0("can't open a bfd on stdout %s"), name);

  else if (!(stdoutput = FUNC4 (name, TARGET_FORMAT)))
    {
      bfd_error_type err = FUNC3 ();

      if (err == bfd_error_invalid_target)
	FUNC1 (FUNC0("selected target format '%s' unknown"), TARGET_FORMAT);
      else
	FUNC1 (FUNC0("can't create %s: %s"), name, FUNC2 (err));
    }

  FUNC6 (stdoutput, bfd_object);
  FUNC5 (stdoutput, TARGET_ARCH, TARGET_MACH);
  if (flag_traditional_format)
    stdoutput->flags |= BFD_TRADITIONAL_FORMAT;
}