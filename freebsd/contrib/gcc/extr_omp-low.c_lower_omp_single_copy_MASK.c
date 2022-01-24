#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * tree ;
struct TYPE_4__ {void* sender_decl; void* receiver_decl; int /*<<< orphan*/ * record_type; } ;
typedef  TYPE_1__ omp_context ;

/* Variables and functions */
 size_t BUILT_IN_GOMP_SINGLE_COPY_END ; 
 size_t BUILT_IN_GOMP_SINGLE_COPY_START ; 
 int /*<<< orphan*/  COND_EXPR ; 
 int /*<<< orphan*/  EQ_EXPR ; 
 int /*<<< orphan*/  LABEL_EXPR ; 
 int /*<<< orphan*/  MODIFY_EXPR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  boolean_type_node ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC7 (void*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** built_in_decls ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 void* FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  void_type_node ; 

__attribute__((used)) static void
FUNC17 (tree single_stmt, tree *pre_p, omp_context *ctx)
{
  tree ptr_type, t, args, l0, l1, l2, copyin_seq;

  ctx->sender_decl = FUNC12 (ctx->record_type, ".omp_copy_o");

  ptr_type = FUNC10 (ctx->record_type);
  ctx->receiver_decl = FUNC12 (ptr_type, ".omp_copy_i");

  l0 = FUNC11 ();
  l1 = FUNC11 ();
  l2 = FUNC11 ();

  t = built_in_decls[BUILT_IN_GOMP_SINGLE_COPY_START];
  t = FUNC8 (t, NULL);
  t = FUNC13 (ptr_type, t);
  t = FUNC4 (MODIFY_EXPR, void_type_node, ctx->receiver_decl, t);
  FUNC14 (t, pre_p);

  t = FUNC4 (EQ_EXPR, boolean_type_node, ctx->receiver_decl,
	      FUNC9 (ptr_type, 0));
  t = FUNC5 (COND_EXPR, void_type_node, t,
	      FUNC6 (&l0), FUNC6 (&l1));
  FUNC14 (t, pre_p);

  t = FUNC3 (LABEL_EXPR, void_type_node, l0);
  FUNC14 (t, pre_p);

  FUNC2 (FUNC0 (single_stmt), pre_p);

  copyin_seq = NULL;
  FUNC15 (FUNC1 (single_stmt), pre_p,
			      &copyin_seq, ctx);

  t = FUNC7 (ctx->sender_decl);
  args = FUNC16 (NULL, t, NULL);
  t = built_in_decls[BUILT_IN_GOMP_SINGLE_COPY_END];
  t = FUNC8 (t, args);
  FUNC14 (t, pre_p);

  t = FUNC6 (&l2);
  FUNC14 (t, pre_p);

  t = FUNC3 (LABEL_EXPR, void_type_node, l1);
  FUNC14 (t, pre_p);

  FUNC2 (copyin_seq, pre_p);

  t = FUNC3 (LABEL_EXPR, void_type_node, l2);
  FUNC14 (t, pre_p);
}