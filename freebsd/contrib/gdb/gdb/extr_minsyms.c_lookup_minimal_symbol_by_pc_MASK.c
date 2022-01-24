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
struct obj_section {int /*<<< orphan*/  the_bfd_section; } ;
struct minimal_symbol {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 struct obj_section* FUNC0 (int /*<<< orphan*/ ) ; 
 struct minimal_symbol* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct minimal_symbol *
FUNC2 (CORE_ADDR pc)
{
  /* NOTE: cagney/2004-01-27: This was using find_pc_mapped_section to
     force the section but that (well unless you're doing overlay
     debugging) always returns NULL making the call somewhat useless.  */
  struct obj_section *section = FUNC0 (pc);
  if (section == NULL)
    return NULL;
  return FUNC1 (pc, section->the_bfd_section);
}