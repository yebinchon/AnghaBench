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
#define  BOUND_TEMPLATE_TEMPLATE_PARM 131 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const) ; 
 int FUNC2 (int /*<<< orphan*/  const) ; 
#define  TEMPLATE_PARM_INDEX 130 
 int FUNC3 (int /*<<< orphan*/  const) ; 
#define  TEMPLATE_TEMPLATE_PARM 129 
 int FUNC4 (int /*<<< orphan*/  const) ; 
 int FUNC5 (int /*<<< orphan*/  const) ; 
#define  TEMPLATE_TYPE_PARM 128 
 int FUNC6 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static void
FUNC11 (const tree parm)
{
  int parm_index;
  int parm_level;
  tree parm_type = NULL_TREE;

  FUNC0 ("template-parm", parm);

  switch (FUNC6 (parm))
    {
    case TEMPLATE_TYPE_PARM:
    case TEMPLATE_TEMPLATE_PARM:
    case BOUND_TEMPLATE_TEMPLATE_PARM:
      parm_index = FUNC4 (parm);
      parm_level = FUNC5 (parm);
      break;

    case TEMPLATE_PARM_INDEX:
      parm_index = FUNC2 (parm);
      parm_level = FUNC3 (parm);
      parm_type = FUNC7 (FUNC1 (parm));
      break;

    default:
      FUNC8 ();
    }

  FUNC9 ('T');
  /* NUMBER as it appears in the mangling is (-1)-indexed, with the
     earliest template param denoted by `_'.  */
  if (parm_index > 0)
    FUNC10 (parm_index - 1);
  FUNC9 ('_');
}