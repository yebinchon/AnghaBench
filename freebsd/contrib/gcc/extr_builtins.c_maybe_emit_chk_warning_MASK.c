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
typedef  int /*<<< orphan*/  location_t ;
typedef  enum built_in_function { ____Placeholder_built_in_function } built_in_function ;

/* Variables and functions */
#define  BUILT_IN_SNPRINTF_CHK 133 
#define  BUILT_IN_STPCPY_CHK 132 
#define  BUILT_IN_STRCAT_CHK 131 
#define  BUILT_IN_STRCPY_CHK 130 
#define  BUILT_IN_STRNCPY_CHK 129 
#define  BUILT_IN_VSNPRINTF_CHK 128 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11 (tree exp, enum built_in_function fcode)
{
  int arg_mask, is_strlen = 0;
  tree arglist = FUNC2 (exp, 1), a;
  tree len, size;
  location_t locus;

  switch (fcode)
    {
    case BUILT_IN_STRCPY_CHK:
    case BUILT_IN_STPCPY_CHK:
    /* For __strcat_chk the warning will be emitted only if overflowing
       by at least strlen (dest) + 1 bytes.  */
    case BUILT_IN_STRCAT_CHK:
      arg_mask = 6;
      is_strlen = 1;
      break;
    case BUILT_IN_STRNCPY_CHK:
      arg_mask = 12;
      break;
    case BUILT_IN_SNPRINTF_CHK:
    case BUILT_IN_VSNPRINTF_CHK:
      arg_mask = 10;
      break;
    default:
      FUNC5 ();
    }

  len = NULL_TREE;
  size = NULL_TREE;
  for (a = arglist; a && arg_mask; a = FUNC1 (a), arg_mask >>= 1)
    if (arg_mask & 1)
      {
	if (len)
	  size = a;
	else
	  len = a;
      }

  if (!len || !size)
    return;

  len = FUNC3 (len);
  size = FUNC3 (size);

  if (! FUNC7 (size, 1) || FUNC8 (size))
    return;

  if (is_strlen)
    {
      len = FUNC4 (len, 1);
      if (! len || ! FUNC7 (len, 1) || FUNC9 (len, size))
	return;
    }
  else if (! FUNC7 (len, 1) || ! FUNC9 (size, len))
    return;

  locus = FUNC0 (exp);
  FUNC10 (0, "%Hcall to %D will always overflow destination buffer",
	   &locus, FUNC6 (exp));
}