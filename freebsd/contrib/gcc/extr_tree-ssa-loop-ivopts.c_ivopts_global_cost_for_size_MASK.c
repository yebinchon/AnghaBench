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
struct ivopts_data {int /*<<< orphan*/  regs_used; } ;

/* Variables and functions */
 int FUNC0 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ivopts_data*) ; 

__attribute__((used)) static unsigned
FUNC2 (struct ivopts_data *data, unsigned size)
{
  return FUNC0 (size, data->regs_used, FUNC1 (data));
}