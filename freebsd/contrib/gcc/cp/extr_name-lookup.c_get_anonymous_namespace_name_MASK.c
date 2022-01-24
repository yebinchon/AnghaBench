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
typedef  scalar_t__ tree ;

/* Variables and functions */
 int /*<<< orphan*/  SUPPORTS_ONE_ONLY ; 
 scalar_t__ anonymous_namespace_name ; 
 int /*<<< orphan*/  flag_weak ; 
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*) ; 

__attribute__((used)) static tree
FUNC2(void)
{
  if (!anonymous_namespace_name)
    {
      /* The anonymous namespace has to have a unique name
	 if typeinfo objects are being compared by name.  */
      if (! flag_weak || ! SUPPORTS_ONE_ONLY)
	anonymous_namespace_name = FUNC0 ("N");
      else
	/* The demangler expects anonymous namespaces to be called
	   something starting with '_GLOBAL__N_'.  */
	anonymous_namespace_name = FUNC1 ("_GLOBAL__N_1");
    }
  return anonymous_namespace_name;
}