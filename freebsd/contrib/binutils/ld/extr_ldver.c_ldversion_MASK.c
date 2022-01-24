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
struct TYPE_3__ {char* emulation_name; } ;
typedef  TYPE_1__ ld_emulation_xfer_type ;

/* Variables and functions */
 char* BFD_VERSION_STRING ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 TYPE_1__** ld_emulations ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 

void
FUNC3 (int noisy)
{
  /* Output for noisy == 2 is intended to follow the GNU standards.  */
  FUNC1 (stdout, FUNC0("GNU ld %s\n"), BFD_VERSION_STRING);

  if (noisy & 2)
    {
      FUNC2 (FUNC0("Copyright 2007 Free Software Foundation, Inc.\n"));
      FUNC2 (FUNC0("\
This program is free software; you may redistribute it under the terms of\n\
the GNU General Public License.  This program has absolutely no warranty.\n"));
    }

  if (noisy & 1)
    {
      ld_emulation_xfer_type **ptr = ld_emulations;

      FUNC2 (FUNC0("  Supported emulations:\n"));
      while (*ptr)
	{
	  FUNC2 ("   %s\n", (*ptr)->emulation_name);
	  ptr++;
	}
    }
}