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
 scalar_t__ BUILT_IN_MD ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ NULL_TREE ; 
 char const* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ VECTOR_TYPE ; 
 int /*<<< orphan*/  rs6000_darwin64_abi ; 

__attribute__((used)) static const char *
FUNC4 (tree typelist, tree funcdecl, tree val)
{
  return (!rs6000_darwin64_abi
	  && typelist == 0
          && FUNC2 (FUNC3 (val)) == VECTOR_TYPE
          && (funcdecl == NULL_TREE
              || (FUNC2 (funcdecl) == FUNCTION_DECL
                  && FUNC0 (funcdecl) != BUILT_IN_MD)))
	  ? FUNC1("AltiVec argument passed to unprototyped function")
	  : NULL;
}