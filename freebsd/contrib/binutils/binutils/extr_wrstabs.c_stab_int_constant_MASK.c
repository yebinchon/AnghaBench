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
struct stab_write_handle {int dummy; } ;
typedef  scalar_t__ bfd_vma ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  N_LSYM ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char const*,long) ; 
 int /*<<< orphan*/  FUNC2 (struct stab_write_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

__attribute__((used)) static bfd_boolean
FUNC5 (void *p, const char *name, bfd_vma val)
{
  struct stab_write_handle *info = (struct stab_write_handle *) p;
  char *buf;

  buf = (char *) FUNC4 (FUNC3 (name) + 20);
  FUNC1 (buf, "%s:c=i%ld", name, (long) val);

  if (! FUNC2 (info, N_LSYM, 0, 0, buf))
    return FALSE;

  FUNC0 (buf);

  return TRUE;
}