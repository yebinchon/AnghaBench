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
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/  const) ; 
 scalar_t__ METHOD_TYPE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char) ; 

__attribute__((used)) static void
FUNC8 (const tree type)
{
  FUNC0 ("function-type", type);

  /* For a pointer to member function, the function type may have
     cv-qualifiers, indicating the quals for the artificial 'this'
     parameter.  */
  if (FUNC1 (type) == METHOD_TYPE)
    {
      /* The first parameter must be a POINTER_TYPE pointing to the
	 `this' parameter.  */
      tree this_type = FUNC2 (FUNC3 (FUNC4 (type)));
      FUNC5 (this_type);
    }

  FUNC7 ('F');
  /* We don't track whether or not a type is `extern "C"'.  Note that
     you can have an `extern "C"' function that does not have
     `extern "C"' type, and vice versa:

       extern "C" typedef void function_t();
       function_t f; // f has C++ linkage, but its type is
		     // `extern "C"'

       typedef void function_t();
       extern "C" function_t f; // Vice versa.

     See [dcl.link].  */
  FUNC6 (type, /*include_return_type_p=*/1,
			    /*decl=*/NULL);
  FUNC7 ('E');
}