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
struct pex_obj {int dummy; } ;

/* Variables and functions */
 char const* FUNC0 (struct pex_obj*,int,char const*,char* const*,int /*<<< orphan*/ *,char const*,char const*,int*) ; 

const char *
FUNC1 (struct pex_obj *obj, int flags, const char *executable,
       	 char * const * argv, const char *orig_outname, const char *errname,
         int *err)
{
  return FUNC0 (obj, flags, executable, argv, NULL,
				 orig_outname, errname, err);
}