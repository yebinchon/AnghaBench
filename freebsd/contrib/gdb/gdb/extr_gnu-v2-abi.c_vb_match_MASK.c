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
struct type {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct type*) ; 
 scalar_t__ TYPE_CODE_PTR ; 
 char* FUNC1 (struct type*,int) ; 
 struct type* FUNC2 (struct type*,int) ; 
 int /*<<< orphan*/ * FUNC3 (struct type*) ; 
 struct type* FUNC4 (struct type*) ; 
 scalar_t__ FUNC5 (char) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7 (struct type *type, int index, struct type *basetype)
{
  struct type *fieldtype;
  char *name = FUNC1 (type, index);
  char *field_class_name = NULL;

  if (*name != '_')
    return 0;
  /* gcc 2.4 uses _vb$.  */
  if (name[1] == 'v' && name[2] == 'b' && FUNC5 (name[3]))
    field_class_name = name + 4;
  /* gcc 2.5 will use __vb_.  */
  if (name[1] == '_' && name[2] == 'v' && name[3] == 'b' && name[4] == '_')
    field_class_name = name + 5;

  if (field_class_name == NULL)
    /* This field is not a virtual base class pointer.  */
    return 0;

  /* It's a virtual baseclass pointer, now we just need to find out whether
     it is for this baseclass.  */
  fieldtype = FUNC2 (type, index);
  if (fieldtype == NULL
      || FUNC0 (fieldtype) != TYPE_CODE_PTR)
    /* "Can't happen".  */
    return 0;

  /* What we check for is that either the types are equal (needed for
     nameless types) or have the same name.  This is ugly, and a more
     elegant solution should be devised (which would probably just push
     the ugliness into symbol reading unless we change the stabs format).  */
  if (FUNC4 (fieldtype) == basetype)
    return 1;

  if (FUNC3 (basetype) != NULL
      && FUNC3 (FUNC4 (fieldtype)) != NULL
      && FUNC6 (FUNC3 (basetype),
		 FUNC3 (FUNC4 (fieldtype))) == 0)
    return 1;
  return 0;
}