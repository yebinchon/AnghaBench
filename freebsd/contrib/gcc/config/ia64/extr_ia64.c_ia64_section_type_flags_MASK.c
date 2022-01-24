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
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
 unsigned int SECTION_SMALL ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,char const*,int) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 

__attribute__((used)) static unsigned int
FUNC3 (tree decl, const char *name, int reloc)
{
  unsigned int flags = 0;

  if (FUNC1 (name, ".sdata") == 0
      || FUNC2 (name, ".sdata.", 7) == 0
      || FUNC2 (name, ".gnu.linkonce.s.", 16) == 0
      || FUNC2 (name, ".sdata2.", 8) == 0
      || FUNC2 (name, ".gnu.linkonce.s2.", 17) == 0
      || FUNC1 (name, ".sbss") == 0
      || FUNC2 (name, ".sbss.", 6) == 0
      || FUNC2 (name, ".gnu.linkonce.sb.", 17) == 0)
    flags = SECTION_SMALL;

  flags |= FUNC0 (decl, name, reloc);
  return flags;
}