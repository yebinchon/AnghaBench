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
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ TRANSLATION_UNIT_DECL ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
#define  tcc_declaration 130 
#define  tcc_exceptional 129 
#define  tcc_type 128 

int
FUNC6 (tree t1, tree t2)
{
  while (t1 && FUNC2 (t1) != TRANSLATION_UNIT_DECL)
    switch (FUNC3 (FUNC2 (t1)))
      {
      case tcc_declaration:
	t1 = FUNC1 (t1); break;
      case tcc_type:
	t1 = FUNC4 (t1); break;
      case tcc_exceptional:
	t1 = FUNC0 (t1); break;  /* assume block */
      default: FUNC5 ();
      }

  while (t2 && FUNC2 (t2) != TRANSLATION_UNIT_DECL)
    switch (FUNC3 (FUNC2 (t2)))
      {
      case tcc_declaration:
	t2 = FUNC1 (t2); break;
      case tcc_type:
	t2 = FUNC4 (t2); break;
      case tcc_exceptional:
	t2 = FUNC0 (t2); break;  /* assume block */
      default: FUNC5 ();
      }

  return t1 == t2;
}