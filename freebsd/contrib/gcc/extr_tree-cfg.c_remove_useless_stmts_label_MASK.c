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
struct rus_data {int has_label; int repeat; int /*<<< orphan*/ * last_goto; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4 (tree *stmt_p, struct rus_data *data)
{
  tree label = FUNC2 (*stmt_p);

  data->has_label = true;

  /* We do want to jump across non-local label receiver code.  */
  if (FUNC0 (label))
    data->last_goto = NULL;

  else if (data->last_goto && FUNC1 (*data->last_goto) == label)
    {
      *data->last_goto = FUNC3 ();
      data->repeat = true;
    }

  /* ??? Add something here to delete unused labels.  */
}