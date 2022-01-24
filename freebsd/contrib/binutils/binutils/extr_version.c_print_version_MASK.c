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

/* Variables and functions */
 char* BFD_VERSION_STRING ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

void
FUNC3 (const char *name)
{
  /* This output is intended to follow the GNU standards document.  */
  /* xgettext:c-format */
  FUNC2 ("GNU %s %s\n", name, BFD_VERSION_STRING);
  FUNC2 (FUNC0("Copyright 2007 Free Software Foundation, Inc.\n"));
  FUNC2 (FUNC0("\
This program is free software; you may redistribute it under the terms of\n\
the GNU General Public License.  This program has absolutely no warranty.\n"));
  FUNC1 (0);
}