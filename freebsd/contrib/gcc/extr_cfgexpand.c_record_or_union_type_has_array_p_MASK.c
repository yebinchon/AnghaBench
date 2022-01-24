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
 scalar_t__ FIELD_DECL ; 
 scalar_t__ QUAL_UNION_TYPE ; 
 scalar_t__ RECORD_TYPE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ UNION_TYPE ; 

__attribute__((used)) static int
FUNC4 (tree tree_type)
{
  tree fields = FUNC3 (tree_type);
  tree f;

  for (f = fields; f; f = FUNC0 (f))
    if (FUNC1 (f) == FIELD_DECL)
      {
	tree field_type = FUNC2 (f);
	if ((FUNC1 (field_type) == RECORD_TYPE
	     || FUNC1 (field_type) == UNION_TYPE
	     || FUNC1 (field_type) == QUAL_UNION_TYPE)
	    && FUNC4 (field_type))
	  return 1;
	if (FUNC1 (field_type) == ARRAY_TYPE)
	  return 1;
      }
  return 0;
}