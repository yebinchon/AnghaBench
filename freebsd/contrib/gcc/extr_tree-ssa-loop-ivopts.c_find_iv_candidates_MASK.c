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
struct ivopts_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ivopts_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct ivopts_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct ivopts_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct ivopts_data*) ; 

__attribute__((used)) static void
FUNC4 (struct ivopts_data *data)
{
  /* Add commonly used ivs.  */
  FUNC2 (data);

  /* Add old induction variables.  */
  FUNC1 (data);

  /* Add induction variables derived from uses.  */
  FUNC0 (data);

  /* Record the important candidates.  */
  FUNC3 (data);
}