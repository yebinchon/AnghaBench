#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct mem_ref_loc {int /*<<< orphan*/  stmt; struct mem_ref_loc* next; } ;
struct loop {int num; } ;
struct lim_aux_data {int dummy; } ;
struct fmt_data {struct loop* orig_loop; struct loop* loop; } ;
typedef  int /*<<< orphan*/  edge ;
struct TYPE_6__ {int sm_done; struct loop* tgt_loop; struct loop* max_loop; } ;
struct TYPE_4__ {int /*<<< orphan*/  aux; } ;
struct TYPE_5__ {TYPE_1__ common; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MODIFY_EXPR ; 
 int TDF_DETAILS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct fmt_data*) ; 
 int /*<<< orphan*/  force_move_till ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct loop*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct mem_ref_loc*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  void_type_node ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 

__attribute__((used)) static void
FUNC14 (struct loop *loop, edge *exits, unsigned n_exits, tree ref,
	     struct mem_ref_loc *mem_refs)
{
  struct mem_ref_loc *aref;
  tree tmp_var;
  unsigned i;
  tree load, store;
  struct fmt_data fmt_data;

  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      FUNC5 (dump_file, "Executing store motion of ");
      FUNC10 (dump_file, ref, 0);
      FUNC5 (dump_file, " from loop %d\n", loop->num);
    }

  tmp_var = FUNC9 (FUNC1 (ref),
			      FUNC6 (ref));

  fmt_data.loop = loop;
  fmt_data.orig_loop = loop;
  FUNC4 (&ref, force_move_till, &fmt_data);

  FUNC11 (tmp_var, mem_refs);
  for (aref = mem_refs; aref; aref = aref->next)
    if (FUNC0 (aref->stmt))
      FUNC0 (aref->stmt)->sm_done = true;

  /* Emit the load & stores.  */
  load = FUNC3 (MODIFY_EXPR, void_type_node, tmp_var, ref);
  FUNC7 (load)->common.aux = FUNC13 (1, sizeof (struct lim_aux_data));
  FUNC0 (load)->max_loop = loop;
  FUNC0 (load)->tgt_loop = loop;

  /* Put this into the latch, so that we are sure it will be processed after
     all dependencies.  */
  FUNC2 (FUNC8 (loop), load);

  for (i = 0; i < n_exits; i++)
    {
      store = FUNC3 (MODIFY_EXPR, void_type_node,
		      FUNC12 (ref), tmp_var);
      FUNC2 (exits[i], store);
    }
}