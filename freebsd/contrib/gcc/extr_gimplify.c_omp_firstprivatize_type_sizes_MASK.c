#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * tree ;
struct gimplify_omp_ctx {int /*<<< orphan*/  privatized_types; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* omp_firstprivatize_type_sizes ) (struct gimplify_omp_ctx*,int /*<<< orphan*/ *) ;} ;
struct TYPE_4__ {TYPE_1__ types; } ;

/* Variables and functions */
#define  ARRAY_TYPE 137 
#define  BOOLEAN_TYPE 136 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
#define  ENUMERAL_TYPE 135 
 int FIELD_DECL ; 
#define  INTEGER_TYPE 134 
#define  POINTER_TYPE 133 
#define  QUAL_UNION_TYPE 132 
#define  REAL_TYPE 131 
#define  RECORD_TYPE 130 
#define  REFERENCE_TYPE 129 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
#define  UNION_TYPE 128 
 int /*<<< orphan*/ * error_mark_node ; 
 TYPE_2__ lang_hooks ; 
 int /*<<< orphan*/  FUNC11 (struct gimplify_omp_ctx*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct gimplify_omp_ctx*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC14 (struct gimplify_omp_ctx *ctx, tree type)
{
  if (type == NULL || type == error_mark_node)
    return;
  type = FUNC6 (type);

  if (FUNC12 (ctx->privatized_types, type))
    return;

  switch (FUNC2 (type))
    {
    case INTEGER_TYPE:
    case ENUMERAL_TYPE:
    case BOOLEAN_TYPE:
    case REAL_TYPE:
      FUNC11 (ctx, FUNC8 (type));
      FUNC11 (ctx, FUNC7 (type));
      break;

    case ARRAY_TYPE:
      FUNC14 (ctx, FUNC3 (type));
      FUNC14 (ctx, FUNC4 (type));
      break;

    case RECORD_TYPE:
    case UNION_TYPE:
    case QUAL_UNION_TYPE:
      {
	tree field;
	for (field = FUNC5 (type); field; field = FUNC1 (field))
	  if (FUNC2 (field) == FIELD_DECL)
	    {
	      FUNC11 (ctx, FUNC0 (field));
	      FUNC14 (ctx, FUNC3 (field));
	    }
      }
      break;

    case POINTER_TYPE:
    case REFERENCE_TYPE:
      FUNC14 (ctx, FUNC3 (type));
      break;

    default:
      break;
    }

  FUNC11 (ctx, FUNC9 (type));
  FUNC11 (ctx, FUNC10 (type));
  lang_hooks.types.omp_firstprivatize_type_sizes (ctx, type);
}