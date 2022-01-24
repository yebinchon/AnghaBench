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
typedef  scalar_t__ tree ;
struct leh_tf_state {TYPE_2__* outer; scalar_t__ fallthru_label; } ;
struct TYPE_4__ {TYPE_1__* tf; } ;
struct TYPE_3__ {int /*<<< orphan*/  try_finally_expr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC2 (struct leh_tf_state *tf)
{
  tree label = tf->fallthru_label;
  if (!label)
    {
      label = FUNC0 ();
      tf->fallthru_label = label;
      if (tf->outer->tf)
        FUNC1 (label, tf->outer->tf->try_finally_expr);
    }
  return label;
}