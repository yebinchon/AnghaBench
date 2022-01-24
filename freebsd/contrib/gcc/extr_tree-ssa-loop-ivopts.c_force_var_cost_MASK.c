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
struct ivopts_data {int dummy; } ;
typedef  int /*<<< orphan*/  bitmap ;

/* Variables and functions */
 struct ivopts_data* fd_ivopts_data ; 
 int /*<<< orphan*/  find_depends ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned
FUNC2 (struct ivopts_data *data,
		tree expr, bitmap *depends_on)
{
  if (depends_on)
    {
      fd_ivopts_data = data;
      FUNC1 (&expr, find_depends, depends_on, NULL);
    }

  return FUNC0 (expr);
}