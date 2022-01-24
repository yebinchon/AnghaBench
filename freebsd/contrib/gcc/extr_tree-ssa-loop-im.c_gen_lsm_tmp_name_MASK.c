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
#define  ALIGN_INDIRECT_REF 142 
#define  ARRAY_RANGE_REF 141 
#define  ARRAY_REF 140 
#define  BIT_FIELD_REF 139 
#define  COMPONENT_REF 138 
#define  IMAGPART_EXPR 137 
#define  INDIRECT_REF 136 
#define  MISALIGNED_INDIRECT_REF 135 
#define  PARM_DECL 134 
#define  REALPART_EXPR 133 
#define  RESULT_DECL 132 
#define  SSA_NAME 131 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  STRING_CST 130 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
#define  VAR_DECL 129 
#define  VIEW_CONVERT_EXPR 128 
 int /*<<< orphan*/  FUNC3 () ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

__attribute__((used)) static void
FUNC6 (tree ref)
{
  const char *name;

  switch (FUNC1 (ref))
    {
    case MISALIGNED_INDIRECT_REF:
    case ALIGN_INDIRECT_REF:
    case INDIRECT_REF:
      FUNC6 (FUNC2 (ref, 0));
      FUNC5 ("_");
      break;

    case BIT_FIELD_REF:
    case VIEW_CONVERT_EXPR:
    case ARRAY_RANGE_REF:
      FUNC6 (FUNC2 (ref, 0));
      break;

    case REALPART_EXPR:
      FUNC6 (FUNC2 (ref, 0));
      FUNC5 ("_RE");
      break;
      
    case IMAGPART_EXPR:
      FUNC6 (FUNC2 (ref, 0));
      FUNC5 ("_IM");
      break;

    case COMPONENT_REF:
      FUNC6 (FUNC2 (ref, 0));
      FUNC5 ("_");
      name = FUNC4 (FUNC2 (ref, 1));
      if (!name)
	name = "F";
      FUNC5 ("_");
      FUNC5 (name);

    case ARRAY_REF:
      FUNC6 (FUNC2 (ref, 0));
      FUNC5 ("_I");
      break;

    case SSA_NAME:
      ref = FUNC0 (ref);
      /* Fallthru.  */

    case VAR_DECL:
    case PARM_DECL:
      name = FUNC4 (ref);
      if (!name)
	name = "D";
      FUNC5 (name);
      break;

    case STRING_CST:
      FUNC5 ("S");
      break;

    case RESULT_DECL:
      FUNC5 ("R");
      break;

    default:
      FUNC3 ();
    }
}