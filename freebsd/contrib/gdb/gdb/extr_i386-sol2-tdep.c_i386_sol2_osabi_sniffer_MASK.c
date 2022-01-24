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
typedef  enum gdb_osabi { ____Placeholder_gdb_osabi } gdb_osabi ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int GDB_OSABI_SOLARIS ; 
 int GDB_OSABI_UNKNOWN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static enum gdb_osabi
FUNC1 (bfd *abfd)
{
  /* If we have a section named .SUNW_version, then it is almost
     certainly Solaris 2.  */
  if (FUNC0 (abfd, ".SUNW_version"))
    return GDB_OSABI_SOLARIS;

  return GDB_OSABI_UNKNOWN;
}