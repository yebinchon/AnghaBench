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
struct iv_use {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct iv_use*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct iv_use* FUNC2 (struct ivopts_data*,unsigned int) ; 
 unsigned int FUNC3 (struct ivopts_data*) ; 

void
FUNC4 (FILE *file, struct ivopts_data *data)
{
  unsigned i;
  struct iv_use *use;

  for (i = 0; i < FUNC3 (data); i++)
    {
      use = FUNC2 (data, i);

      FUNC0 (file, use);
      FUNC1 (file, "\n");
    }
}