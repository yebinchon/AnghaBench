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
struct loop {unsigned int num_nodes; } ;
struct ivopts_data {struct loop* current_loop; } ;
typedef  int /*<<< orphan*/  basic_block ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ivopts_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (struct loop*) ; 

__attribute__((used)) static void
FUNC3 (struct ivopts_data *data)
{
  struct loop *loop = data->current_loop;
  basic_block *body = FUNC2 (loop);
  unsigned i;

  for (i = 0; i < loop->num_nodes; i++)
    FUNC0 (data, body[i]);
  FUNC1 (body);
}