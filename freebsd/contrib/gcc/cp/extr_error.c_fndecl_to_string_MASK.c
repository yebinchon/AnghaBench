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
 int TFF_DECL_SPECIFIERS ; 
 int TFF_EXCEPTION_SPECIFICATION ; 
 int TFF_FUNCTION_DEFAULT_ARGUMENTS ; 
 int TFF_TEMPLATE_HEADER ; 
 int /*<<< orphan*/  cxx_pp ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 char const* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static const char *
FUNC3 (tree fndecl, int verbose)
{
  int flags;

  flags = TFF_EXCEPTION_SPECIFICATION | TFF_DECL_SPECIFIERS
    | TFF_TEMPLATE_HEADER;
  if (verbose)
    flags |= TFF_FUNCTION_DEFAULT_ARGUMENTS;
  FUNC2 ();
  FUNC0 (fndecl, flags);
  return FUNC1 (cxx_pp);
}