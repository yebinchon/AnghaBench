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
typedef  int /*<<< orphan*/ * tree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ * const) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ * const) ; 
 scalar_t__ METHOD_TYPE ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ * const) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13 (const tree type, const int include_return_type_p,
			  const tree decl)
{
  int java_method_p;

  FUNC5 ("bare-function-type", type);

  /* Detect Java methods and emit special encoding.  */
  if (decl != NULL
      && FUNC4 (decl)
      && FUNC9 (FUNC1 (decl))
      && !FUNC0 (decl)
      && !FUNC3 (decl)
      && !FUNC2 (decl))
    {
      java_method_p = 1;
      FUNC10 ('J');
    }
  else
    {
      java_method_p = 0;
    }

  /* Mangle the return type, if requested.  */
  if (include_return_type_p || java_method_p)
    FUNC12 (FUNC7 (type));

  /* Now mangle the types of the arguments.  */
  FUNC11 (FUNC8 (type),
		      FUNC6 (type) == METHOD_TYPE,
		      decl);
}