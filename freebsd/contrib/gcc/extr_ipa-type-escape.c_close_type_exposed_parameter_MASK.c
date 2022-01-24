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
 int /*<<< orphan*/  EXPOSED_PARAMETER ; 
 scalar_t__ FIELD_DECL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  been_there_done_that ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (scalar_t__,int,int) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12 (tree type)
{
  tree field;
  int uid;

  type = FUNC9 (type, false, false);
  if (!type)
    return;
  uid = FUNC5 (type);
  FUNC8 (!FUNC0 (type));

  if (FUNC6 (been_there_done_that, uid))
    return;
  FUNC7 (been_there_done_that, uid);

  /* If the field is a struct or union type, mark all of the
     subfields.  */
  for (field = FUNC4 (type);
       field;
       field = FUNC1 (field))
    {
      tree field_type;

      if (FUNC2 (field) != FIELD_DECL)
	continue;

      field_type = FUNC9 (FUNC3 (field), false, false);
      FUNC11 (field_type, EXPOSED_PARAMETER);

      /* Only recurse for non pointer types of structures and unions.  */
      if (FUNC10 (field_type) == 0) 
	FUNC12 (field_type);
    }
}