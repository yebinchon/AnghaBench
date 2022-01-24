#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* emulation_name; int /*<<< orphan*/  (* list_options ) (int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__ ld_emulation_xfer_type ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 TYPE_1__** ld_emulations ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3 (FILE *f)
{
  ld_emulation_xfer_type **eptr;
  int options_found = 0;

  for (eptr = ld_emulations; *eptr; eptr++)
    {
      ld_emulation_xfer_type *emul = *eptr;

      if (emul->list_options)
	{
	  FUNC1 (f, "%s: \n", emul->emulation_name);

	  emul->list_options (f);

	  options_found = 1;
	}
    }

  if (! options_found)
    FUNC1 (f, FUNC0("  no emulation specific options.\n"));
}