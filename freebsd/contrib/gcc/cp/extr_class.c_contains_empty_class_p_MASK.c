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
 scalar_t__ ARRAY_TYPE ; 
 scalar_t__ FUNC0 (scalar_t__,int,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FIELD_DECL ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 

__attribute__((used)) static bool
FUNC10 (tree type)
{
  if (FUNC9 (type))
    return true;
  if (FUNC2 (type))
    {
      tree field;
      tree binfo;
      tree base_binfo;
      int i;

      for (binfo = FUNC7 (type), i = 0;
	   FUNC0 (binfo, i, base_binfo); ++i)
	if (FUNC10 (FUNC1 (base_binfo)))
	  return true;
      for (field = FUNC8 (type); field; field = FUNC4 (field))
	if (FUNC5 (field) == FIELD_DECL
	    && !FUNC3 (field)
	    && FUNC9 (FUNC6 (field)))
	  return true;
    }
  else if (FUNC5 (type) == ARRAY_TYPE)
    return FUNC10 (FUNC6 (type));
  return false;
}