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
#define  CONST_DECL 130 
 int /*<<< orphan*/  const FUNC0 (int /*<<< orphan*/  const) ; 
#define  INTEGER_CST 129 
#define  REAL_CST 128 
 int FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  boolean_type_node ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12 (const tree value)
{
  FUNC8 ('L');
  FUNC11 (FUNC2 (value));

  switch (FUNC1 (value))
    {
    case CONST_DECL:
      FUNC9 (FUNC0 (value));
      break;

    case INTEGER_CST:
      FUNC3 (!FUNC7 (FUNC2 (value), boolean_type_node)
		  || FUNC6 (value) || FUNC5 (value));
      FUNC9 (value);
      break;

    case REAL_CST:
      FUNC10 (value);
      break;

    default:
      FUNC4 ();
    }

  FUNC8 ('E');
}