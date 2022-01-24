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
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (scalar_t__,char*) ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ ld_canon_sysroot ; 
 int ld_canon_sysroot_len ; 
 char* FUNC3 (char const*) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static bfd_boolean
FUNC5 (const char *name, bfd_boolean notsame)
{
  char * realname = ld_canon_sysroot ? FUNC3 (name) : NULL;
  int len;
  bfd_boolean result;

  if (! realname)
    return FALSE;

  len = FUNC4 (realname);

  if (((! notsame && len == ld_canon_sysroot_len)
       || (len >= ld_canon_sysroot_len
	   && FUNC1 (realname[ld_canon_sysroot_len])
	   && (realname[ld_canon_sysroot_len] = '\0') == '\0'))
      && FUNC0 (ld_canon_sysroot, realname) == 0)
    result = TRUE;
  else
    result = FALSE;

  if (realname)
    FUNC2 (realname);

  return result;
}