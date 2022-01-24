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
 scalar_t__ SPCT_FLAG_ALL ; 
 scalar_t__ SPCT_FLAG_STRONG ; 
 unsigned int SPCT_HAS_AGGREGATE ; 
 unsigned int SPCT_HAS_ARRAY ; 
 unsigned int SPCT_HAS_LARGE_CHAR_ARRAY ; 
 unsigned int SPCT_HAS_SMALL_CHAR_ARRAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ flag_stack_protect ; 
 int has_protected_decls ; 
 int has_short_buffer ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2 (tree decl)
{
  unsigned int bits = FUNC1 (FUNC0 (decl));
  int ret = 0;

  if (bits & SPCT_HAS_SMALL_CHAR_ARRAY)
    has_short_buffer = true;

  if (flag_stack_protect == SPCT_FLAG_ALL
      || flag_stack_protect == SPCT_FLAG_STRONG)
    {
      if ((bits & (SPCT_HAS_SMALL_CHAR_ARRAY | SPCT_HAS_LARGE_CHAR_ARRAY))
	  && !(bits & SPCT_HAS_AGGREGATE))
	ret = 1;
      else if (bits & SPCT_HAS_ARRAY)
	ret = 2;
    }
  else
    ret = (bits & SPCT_HAS_LARGE_CHAR_ARRAY) != 0;

  if (ret)
    has_protected_decls = true;

  return ret;
}