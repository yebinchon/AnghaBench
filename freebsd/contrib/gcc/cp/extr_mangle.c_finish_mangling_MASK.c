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
struct TYPE_2__ {int /*<<< orphan*/  substitutions; int /*<<< orphan*/  entity; scalar_t__ need_abi_warning; } ;

/* Variables and functions */
 TYPE_1__ G ; 
 int /*<<< orphan*/  OPT_Wabi ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mangle_obstack ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tree ; 
 scalar_t__ warn_abi ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 

__attribute__((used)) static inline const char *
FUNC4 (const bool warn)
{
  if (warn_abi && warn && G.need_abi_warning)
    FUNC2 (OPT_Wabi, "the mangled name of %qD will change in a future "
	     "version of GCC",
	     G.entity);

  /* Clear all the substitutions.  */
  FUNC0 (tree, G.substitutions, 0);

  /* Null-terminate the string.  */
  FUNC3 ('\0');

  return (const char *) FUNC1 (mangle_obstack);
}