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
 scalar_t__ FUNC0 (scalar_t__,int,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FIELD_DECL ; 
 scalar_t__ QUAL_UNION_TYPE ; 
 scalar_t__ RECORD_TYPE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ UNION_TYPE ; 

__attribute__((used)) static bool
FUNC7 (tree parent, tree child)
{
  int i;
  tree binfo, base_binfo;
  if (FUNC5 (parent)) 
    for (binfo = FUNC5 (parent), i = 0;
	 FUNC0 (binfo, i, base_binfo); i++)
      {
	tree binfotype = FUNC1 (base_binfo);
	if (binfotype == child) 
	  return true;
	else if (FUNC7 (binfotype, child))
	  return true;
      }
  if (FUNC3 (parent) == UNION_TYPE
      || FUNC3 (parent) == QUAL_UNION_TYPE) 
    {
      tree field;
      /* Search all of the variants in the union to see if one of them
	 is the child.  */
      for (field = FUNC6 (parent);
	   field;
	   field = FUNC2 (field))
	{
	  tree field_type;
	  if (FUNC3 (field) != FIELD_DECL)
	    continue;
	  
	  field_type = FUNC4 (field);
	  if (field_type == child) 
	    return true;
	}

      /* If we did not find it, recursively ask the variants if one of
	 their children is the child type.  */
      for (field = FUNC6 (parent);
	   field;
	   field = FUNC2 (field))
	{
	  tree field_type;
	  if (FUNC3 (field) != FIELD_DECL)
	    continue;
	  
	  field_type = FUNC4 (field);
	  if (FUNC3 (field_type) == RECORD_TYPE 
	      || FUNC3 (field_type) == QUAL_UNION_TYPE 
	      || FUNC3 (field_type) == UNION_TYPE)
	    if (FUNC7 (field_type, child)) 
	      return true;
	}
    }
  
  if (FUNC3 (parent) == RECORD_TYPE)
    {
      tree field;
      for (field = FUNC6 (parent);
	   field;
	   field = FUNC2 (field))
	{
	  tree field_type;
	  if (FUNC3 (field) != FIELD_DECL)
	    continue;
	  
	  field_type = FUNC4 (field);
	  if (field_type == child) 
	    return true;
	  /* You can only cast to the first field so if it does not
	     match, quit.  */
	  if (FUNC3 (field_type) == RECORD_TYPE 
	      || FUNC3 (field_type) == QUAL_UNION_TYPE 
	      || FUNC3 (field_type) == UNION_TYPE)
	    {
	      if (FUNC7 (field_type, child)) 
		return true;
	      else 
		break;
	    }
	}
    }
  return false;
}