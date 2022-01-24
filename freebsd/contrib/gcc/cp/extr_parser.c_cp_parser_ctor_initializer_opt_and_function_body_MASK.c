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
typedef  int /*<<< orphan*/  cp_parser ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC4 (cp_parser *parser)
{
  tree body;
  bool ctor_initializer_p;

  /* Begin the function body.  */
  body = FUNC0 ();
  /* Parse the optional ctor-initializer.  */
  ctor_initializer_p = FUNC1 (parser);
  /* Parse the function-body.  */
  FUNC2 (parser);
  /* Finish the function body.  */
  FUNC3 (body);

  return ctor_initializer_p;
}