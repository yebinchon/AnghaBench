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
struct ivopts_data {int /*<<< orphan*/  current_loop; } ;
typedef  int /*<<< orphan*/  edge ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct ivopts_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC2 (struct ivopts_data *data)
{
  edge exit = FUNC1 (data->current_loop);

  if (!exit)
    return NULL;

  return FUNC0 (data, exit);
}