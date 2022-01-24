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
struct leh_tf_state {int goto_queue_active; void** top_p; struct goto_queue_node* goto_queue; int /*<<< orphan*/ * eh_label; scalar_t__ may_throw; } ;
struct leh_state {int dummy; } ;
struct goto_queue_node {scalar_t__ index; } ;

/* Variables and functions */
 int /*<<< orphan*/  LABEL_EXPR ; 
 void* FUNC0 (void*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct goto_queue_node*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct goto_queue_node*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (struct leh_state*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (struct leh_tf_state*) ; 
 int /*<<< orphan*/  void_type_node ; 

__attribute__((used)) static void
FUNC8 (struct leh_state *state, struct leh_tf_state *tf)
{
  tree x, finally, lab, return_val;
  struct goto_queue_node *q, *qe;

  if (tf->may_throw)
    lab = tf->eh_label;
  else
    lab = FUNC3 ();

  finally = FUNC0 (*tf->top_p, 1);
  *tf->top_p = FUNC0 (*tf->top_p, 0);

  x = FUNC2 (LABEL_EXPR, void_type_node, lab);
  FUNC1 (x, tf->top_p);

  return_val = NULL;
  q = tf->goto_queue;
  qe = q + tf->goto_queue_active;
  for (; q < qe; ++q)
    if (q->index < 0)
      FUNC5 (q, lab, NULL, &return_val);
    else
      FUNC4 (q, lab, NULL);

  FUNC7 (tf);

  FUNC6 (state, &finally);
  FUNC1 (finally, tf->top_p);
}