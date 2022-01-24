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
struct rus_data {int may_branch; int /*<<< orphan*/ * last_goto; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ LABEL_DECL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2 (tree *stmt_p, struct rus_data *data)
{
  tree dest = FUNC0 (*stmt_p);

  data->may_branch = true;
  data->last_goto = NULL;

  /* Record the last goto expr, so that we can delete it if unnecessary.  */
  if (FUNC1 (dest) == LABEL_DECL)
    data->last_goto = stmt_p;
}