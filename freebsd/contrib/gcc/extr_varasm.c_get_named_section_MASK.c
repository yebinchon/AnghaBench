#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  int /*<<< orphan*/  section ;
struct TYPE_2__ {unsigned int (* section_type_flags ) (int /*<<< orphan*/ ,char const*,int) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ,char const*,int) ; 
 TYPE_1__ targetm ; 

section *
FUNC6 (tree decl, const char *name, int reloc)
{
  unsigned int flags;

  FUNC3 (!decl || FUNC0 (decl));
  if (name == NULL)
    name = FUNC2 (FUNC1 (decl));

  flags = targetm.section_type_flags (decl, name, reloc);

  return FUNC4 (name, flags, decl);
}