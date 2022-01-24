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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  local_hash ; 
 int /*<<< orphan*/  local_symbol_conversion_count ; 
 int /*<<< orphan*/  local_symbol_count ; 
 int /*<<< orphan*/  sy_hash ; 

void
FUNC2 (FILE *file)
{
  FUNC1 (file, "symbol table", sy_hash);
  FUNC1 (file, "mini local symbol table", local_hash);
  FUNC0 (file, "%lu mini local symbols created, %lu converted\n",
	   local_symbol_count, local_symbol_conversion_count);
}