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
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4 (char *name)
{
  FUNC2 (
  /* We fill in the filename later.  start_symtab puts
     this pointer into last_source_file and we put it in
     subfiles->name, which end_symtab frees; that's why
     it must be malloc'd.  */
		 FUNC1 (name, FUNC3 (name)),
  /* We never know the directory name for COFF.  */
		 NULL,
  /* The start address is irrelevant, since we set
     last_source_start_addr in coff_end_symtab.  */
		 0);
  FUNC0 ("COFF");
}