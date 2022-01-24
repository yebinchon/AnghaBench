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
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ COMPOUND_EXPR ; 
 scalar_t__ COND_EXPR ; 
 scalar_t__ INTEGER_CST ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 char* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__) ; 
 int FUNC13 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 

tree
FUNC15 (tree src, int only_value)
{
  tree offset_node;
  HOST_WIDE_INT offset;
  int max;
  const char *ptr;

  FUNC0 (src);
  if (FUNC1 (src) == COND_EXPR
      && (only_value || !FUNC3 (FUNC2 (src, 0))))
    {
      tree len1, len2;

      len1 = FUNC15 (FUNC2 (src, 1), only_value);
      len2 = FUNC15 (FUNC2 (src, 2), only_value);
      if (FUNC12 (len1, len2))
	return len1;
    }

  if (FUNC1 (src) == COMPOUND_EXPR
      && (only_value || !FUNC3 (FUNC2 (src, 0))))
    return FUNC15 (FUNC2 (src, 1), only_value);

  src = FUNC10 (src, &offset_node);
  if (src == 0)
    return 0;

  max = FUNC4 (src) - 1;
  ptr = FUNC5 (src);

  if (offset_node && FUNC1 (offset_node) != INTEGER_CST)
    {
      /* If the string has an internal zero byte (e.g., "foo\0bar"), we can't
	 compute the offset to the following null if we don't know where to
	 start searching for it.  */
      int i;

      for (i = 0; i < max; i++)
	if (ptr[i] == 0)
	  return 0;

      /* We don't know the starting offset, but we do know that the string
	 has no internal zero bytes.  We can assume that the offset falls
	 within the bounds of the string; otherwise, the programmer deserves
	 what he gets.  Subtract the offset from the length of the string,
	 and return that.  This would perhaps not be valid if we were dealing
	 with named arrays in addition to literal string constants.  */

      return FUNC7 (FUNC8 (max), offset_node);
    }

  /* We have a known offset into the string.  Start searching there for
     a null character if we can represent it as a single HOST_WIDE_INT.  */
  if (offset_node == 0)
    offset = 0;
  else if (! FUNC6 (offset_node, 0))
    offset = -1;
  else
    offset = FUNC13 (offset_node, 0);

  /* If the offset is known to be out of bounds, warn, and call strlen at
     runtime.  */
  if (offset < 0 || offset > max)
    {
      FUNC14 (0, "offset outside bounds of constant string");
      return 0;
    }

  /* Use strlen to search for the first zero byte.  Since any strings
     constructed with build_string will have nulls appended, we win even
     if we get handed something like (char[4])"abcd".

     Since OFFSET is our starting index into the string, no further
     calculation is needed.  */
  return FUNC9 (FUNC11 (ptr + offset));
}