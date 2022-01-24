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
typedef  scalar_t__ bfd_size_type ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 void* FUNC5 (scalar_t__) ; 
 scalar_t__ svi_maxvma ; 
 char* svi_namelen ; 
 char* svi_sizelen ; 
 scalar_t__ svi_total ; 
 void* svi_vmalen ; 
 int /*<<< orphan*/  sysv_internal_printer ; 
 int /*<<< orphan*/  sysv_internal_sizer ; 

__attribute__((used)) static void
FUNC6 (bfd *file)
{
  /* Size all of the columns.  */
  svi_total = 0;
  svi_maxvma = 0;
  svi_namelen = 0;
  FUNC1 (file, sysv_internal_sizer, NULL);
  svi_vmalen = FUNC5 ((bfd_size_type)svi_maxvma);

  if ((size_t) svi_vmalen < sizeof ("addr") - 1)
    svi_vmalen = sizeof ("addr")-1;

  svi_sizelen = FUNC5 (svi_total);
  if ((size_t) svi_sizelen < sizeof ("size") - 1)
    svi_sizelen = sizeof ("size")-1;

  svi_total = 0;
  FUNC3 ("%s  ", FUNC0 (file));

  if (FUNC2 (file))
    FUNC3 (" (ex %s)", FUNC0 (FUNC2 (file)));

  FUNC3 (":\n%-*s   %*s   %*s\n", svi_namelen, "section",
	  svi_sizelen, "size", svi_vmalen, "addr");

  FUNC1 (file, sysv_internal_printer, NULL);

  FUNC3 ("%-*s   ", svi_namelen, "Total");
  FUNC4 (svi_sizelen, svi_total);
  FUNC3 ("\n\n");
}