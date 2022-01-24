#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct ivopts_data {int /*<<< orphan*/  current_loop; } ;
struct iv {int dummy; } ;
typedef  int /*<<< orphan*/  basic_block ;
struct TYPE_2__ {struct iv* iv; } ;

/* Variables and functions */
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct ivopts_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ivopts_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct iv *
FUNC5 (struct ivopts_data *data, tree var)
{
  basic_block bb;
  
  if (!FUNC3 (data, var)->iv)
    {
      bb = FUNC1 (FUNC0 (var));

      if (!bb
	  || !FUNC2 (data->current_loop, bb))
	FUNC4 (data, var, var, NULL_TREE);
    }

  return FUNC3 (data, var)->iv;
}