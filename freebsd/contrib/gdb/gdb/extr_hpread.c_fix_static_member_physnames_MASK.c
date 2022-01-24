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
struct objfile {int /*<<< orphan*/  objfile_obstack; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct type*) ; 
 scalar_t__ TYPE_CODE_STRUCT ; 
 int /*<<< orphan*/ * FUNC2 (struct type*) ; 
 char* FUNC3 (struct type*,int) ; 
 scalar_t__ FUNC4 (struct type*,int) ; 
 scalar_t__ FUNC5 (struct type*,int) ; 
 int FUNC6 (struct type*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,char*) ; 
 scalar_t__ FUNC10 (char*) ; 

__attribute__((used)) static void
FUNC11 (struct type *type, char *class_name,
			     struct objfile *objfile)
{
  int i;

  /* We fix the member names only for classes or structs */
  if (FUNC1 (type) != TYPE_CODE_STRUCT)
    return;

  for (i = 0; i < FUNC6 (type); i++)
    if (FUNC4 (type, i))
      {
	if (FUNC5 (type, i))
	  return;		/* physnames are already set */

	FUNC0 (FUNC2 (type)[i],
			    FUNC7 (&objfile->objfile_obstack,
	     FUNC10 (class_name) + FUNC10 (FUNC3 (type, i)) + 3));
	FUNC9 (FUNC5 (type, i), class_name);
	FUNC8 (FUNC5 (type, i), "::");
	FUNC8 (FUNC5 (type, i), FUNC3 (type, i));
      }
}