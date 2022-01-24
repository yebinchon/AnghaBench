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
struct symtab {int /*<<< orphan*/  filename; } ;
struct objfile {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct objfile*) ; 
 int /*<<< orphan*/  current_source_end_addr ; 
 int /*<<< orphan*/  current_source_start_addr ; 
 struct symtab* FUNC1 (int /*<<< orphan*/ ,struct objfile*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * last_source_file ; 
 int /*<<< orphan*/  last_source_start_addr ; 

__attribute__((used)) static void
FUNC3 (struct objfile *objfile)
{
  struct symtab *symtab;

  last_source_start_addr = current_source_start_addr;

  symtab = FUNC1 (current_source_end_addr, objfile, FUNC0 (objfile));

  if (symtab != NULL)
    FUNC2 (symtab->filename);

  /* Reinitialize for beginning of new file. */
  last_source_file = NULL;
}