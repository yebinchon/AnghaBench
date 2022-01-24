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
struct mips16_constant_pool {int dummy; } ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Pmode ; 
 scalar_t__ SYMBOL_REF ; 
 int /*<<< orphan*/  FUNC2 (struct mips16_constant_pool*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6 (rtx *x, void *data)
{
  struct mips16_constant_pool *pool = data;
  if (FUNC1 (*x) == SYMBOL_REF && FUNC0 (*x))
    *x = FUNC3 (Pmode, FUNC2 (pool,
						 FUNC4 (*x),
						 FUNC5 (*x)));
  return 0;
}