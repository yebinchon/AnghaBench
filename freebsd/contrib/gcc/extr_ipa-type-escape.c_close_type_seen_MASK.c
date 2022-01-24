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
typedef  int /*<<< orphan*/  bitmap ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FIELD_DECL ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  been_there_done_that ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (scalar_t__,int,int) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 

__attribute__((used)) static void
FUNC14 (tree type)
{
  tree field;
  int i, uid;
  tree binfo, base_binfo;

  /* See thru all pointer tos and array ofs. */
  type = FUNC11 (type, true, true);
  if (!type)
    return;

  uid = FUNC8 (type);

  if (FUNC9 (been_there_done_that, uid))
    return;
  FUNC10 (been_there_done_that, uid);

  /* If we are doing a language with a type hierarchy, mark all of
     the superclasses.  */
  if (FUNC5 (type)) 
    for (binfo = FUNC5 (type), i = 0;
	 FUNC0 (binfo, i, base_binfo); i++)
      {
	tree binfo_type = FUNC1 (base_binfo);
	bitmap subtype_map = FUNC13 
	  (FUNC8 (FUNC7 (binfo_type)), true);
	FUNC10 (subtype_map, uid);
	FUNC14 (FUNC11 (binfo_type, true, true));
      }
      
  /* If the field is a struct or union type, mark all of the
     subfields.  */
  for (field = FUNC6 (type);
       field;
       field = FUNC2 (field))
    {
      tree field_type;
      if (FUNC3 (field) != FIELD_DECL)
	continue;

      field_type = FUNC4 (field);
      if (FUNC12 (field_type) >= 0)
	FUNC14 (FUNC11 (field_type, true, true));
    }
}