#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_2__ {char* (* strip_name_encoding ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNCTION_DECL ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ VAR_DECL ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ error_mark_node ; 
 char* first_global_object_name ; 
 char* FUNC12 (char const*) ; 
 char* FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_1__ targetm ; 
 char* weak_global_object_name ; 

void
FUNC14 (tree decl)
{
  const char **type = &first_global_object_name;

  if (first_global_object_name
      || !FUNC9 (decl)
      || FUNC1 (decl)
      || !FUNC3 (decl)
      || (FUNC8 (decl) != FUNCTION_DECL
	  && (FUNC8 (decl) != VAR_DECL
	      || (FUNC0 (decl)
		  && (FUNC2 (decl) == 0
		      || FUNC2 (decl) == error_mark_node))))
      || !FUNC7 (FUNC5 (decl)))
    return;

  /* We win when global object is found, but it is useful to know about weak
     symbol as well so we can produce nicer unique names.  */
  if (FUNC6 (decl) || FUNC4 (decl))
    type = &weak_global_object_name;

  if (!*type)
    {
      const char *p;
      const char *name;
      rtx decl_rtl = FUNC5 (decl);

      p = targetm.strip_name_encoding (FUNC11 (FUNC10 (decl_rtl, 0), 0));
      name = FUNC12 (p);

      *type = name;
    }
}