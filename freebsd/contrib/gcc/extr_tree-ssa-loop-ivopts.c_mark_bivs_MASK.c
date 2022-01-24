#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct loop {int /*<<< orphan*/  header; } ;
struct ivopts_data {struct loop* current_loop; } ;
struct iv {int biv_p; } ;
typedef  TYPE_1__* basic_block ;
struct TYPE_3__ {int flags; struct loop* loop_father; } ;

/* Variables and functions */
 int BB_IRREDUCIBLE_LOOP ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 struct iv* FUNC5 (struct ivopts_data*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct loop*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8 (struct ivopts_data *data)
{
  tree phi, var;
  struct iv *iv, *incr_iv;
  struct loop *loop = data->current_loop;
  basic_block incr_bb;

  for (phi = FUNC7 (loop->header); phi; phi = FUNC1 (phi))
    {
      iv = FUNC5 (data, FUNC2 (phi));
      if (!iv)
	continue;

      var = FUNC0 (phi, FUNC6 (loop));
      incr_iv = FUNC5 (data, var);
      if (!incr_iv)
	continue;

      /* If the increment is in the subloop, ignore it.  */
      incr_bb = FUNC4 (FUNC3 (var));
      if (incr_bb->loop_father != data->current_loop
	  || (incr_bb->flags & BB_IRREDUCIBLE_LOOP))
	continue;

      iv->biv_p = true;
      incr_iv->biv_p = true;
    }
}