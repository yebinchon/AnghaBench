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
 scalar_t__ ENUMERAL_TYPE ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ RECORD_TYPE ; 
 int TFF_CLASS_KEY_OR_ENUM ; 
 int TFF_DECL_SPECIFIERS ; 
 int TFF_RETURN_TYPE ; 
 int TFF_TEMPLATE_HEADER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TYPE_DECL ; 
 scalar_t__ UNION_TYPE ; 
 int /*<<< orphan*/  cxx_pp ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 char const* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static const char *
FUNC4 (tree decl, int verbose)
{
  int flags = 0;

  if (FUNC0 (decl) == TYPE_DECL || FUNC0 (decl) == RECORD_TYPE
      || FUNC0 (decl) == UNION_TYPE || FUNC0 (decl) == ENUMERAL_TYPE)
    flags = TFF_CLASS_KEY_OR_ENUM;
  if (verbose)
    flags |= TFF_DECL_SPECIFIERS;
  else if (FUNC0 (decl) == FUNCTION_DECL)
    flags |= TFF_DECL_SPECIFIERS | TFF_RETURN_TYPE;
  flags |= TFF_TEMPLATE_HEADER;

  FUNC3 ();
  FUNC1 (decl, flags);
  return FUNC2 (cxx_pp);
}