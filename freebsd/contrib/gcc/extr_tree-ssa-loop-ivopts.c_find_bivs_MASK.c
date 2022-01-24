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
struct loop {int /*<<< orphan*/  header; } ;
struct ivopts_data {struct loop* current_loop; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct loop*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ivopts_data*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static bool
FUNC12 (struct ivopts_data *data)
{
  tree phi, step, type, base;
  bool found = false;
  struct loop *loop = data->current_loop;

  for (phi = FUNC10 (loop->header); phi; phi = FUNC1 (phi))
    {
      if (FUNC3 (FUNC2 (phi)))
	continue;

      step = FUNC6 (phi);
      if (!step)
	continue;

      base = FUNC0 (phi, FUNC9 (loop));
      base = FUNC7 (base);
      if (FUNC5 (base)
	  || FUNC5 (step))
	continue;

      type = FUNC4 (FUNC2 (phi));
      base = FUNC8 (type, base);
      if (step)
	step = FUNC8 (type, step);

      FUNC11 (data, FUNC2 (phi), base, step);
      found = true;
    }

  return found;
}