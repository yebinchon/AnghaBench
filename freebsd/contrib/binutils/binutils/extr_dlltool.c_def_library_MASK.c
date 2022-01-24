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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int d_is_dll ; 
 scalar_t__ d_is_exe ; 
 int /*<<< orphan*/  dll_name ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

void
FUNC4 (const char *name, int base)
{
  /* xgettext:c-format */
  FUNC1 (FUNC0("LIBRARY: %s base: %x"), name, base);

  if (d_is_exe)
    FUNC2 (FUNC0("Can't have LIBRARY and NAME"));

  /* If --dllname not provided, use the one in the DEF file.  */
  if (! dll_name)
    FUNC3 (name);
  d_is_dll = 1;
}