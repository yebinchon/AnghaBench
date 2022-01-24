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
 int /*<<< orphan*/  FUNC0 (struct type*) ; 
 struct type* FUNC1 (struct type*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct type*) ; 
 scalar_t__ TYPE_CODE_PTR ; 
 scalar_t__ TYPE_CODE_STRUCT ; 
 char* FUNC3 (struct type*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct type*) ; 
 scalar_t__ FUNC5 (struct type*) ; 
 char* FUNC6 (struct type*) ; 
 int /*<<< orphan*/  FUNC7 (struct type*) ; 
 struct type* FUNC8 (int /*<<< orphan*/ ) ; 
 struct type* java_object_type ; 
 scalar_t__ FUNC9 (char*,char*) ; 

int
FUNC10 (struct type *type)
{
  FUNC0 (type);
  if (FUNC2 (type) == TYPE_CODE_PTR)
    {
      struct type *ttype = FUNC8 (FUNC7 (type));
      char *name;
      if (FUNC2 (ttype) != TYPE_CODE_STRUCT)
	return 0;
      while (FUNC5 (ttype) > 0)
	ttype = FUNC1 (ttype, 0);
      name = FUNC6 (ttype);
      if (name != NULL && FUNC9 (name, "java.lang.Object") == 0)
	return 1;
      name = FUNC4 (ttype) > 0 ? FUNC3 (ttype, 0) : (char *) 0;
      if (name != NULL && FUNC9 (name, "vtable") == 0)
	{
	  if (java_object_type == NULL)
	    java_object_type = type;
	  return 1;
	}
    }
  return 0;
}