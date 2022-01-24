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
typedef  int /*<<< orphan*/  cpp_reader ;

/* Variables and functions */
 int /*<<< orphan*/  do_pragma_dependency ; 
 int /*<<< orphan*/  do_pragma_mark ; 
 int /*<<< orphan*/  do_pragma_once ; 
 int /*<<< orphan*/  do_pragma_poison ; 
 int /*<<< orphan*/  do_pragma_system_header ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 

void
FUNC1 (cpp_reader *pfile)
{
  /* Pragmas in the global namespace.  */
  FUNC0 (pfile, 0, "once", do_pragma_once);
  /* APPLE LOCAL pragma mark 5614511 */
  FUNC0 (pfile, 0, "mark", do_pragma_mark);

  /* New GCC-specific pragmas should be put in the GCC namespace.  */
  FUNC0 (pfile, "GCC", "poison", do_pragma_poison);
  FUNC0 (pfile, "GCC", "system_header",
			    do_pragma_system_header);
  FUNC0 (pfile, "GCC", "dependency", do_pragma_dependency);
}