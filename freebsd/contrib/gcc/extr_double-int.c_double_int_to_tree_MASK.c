#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_5__ {int /*<<< orphan*/  high; int /*<<< orphan*/  low; } ;
typedef  TYPE_1__ double_int ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC3 (TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

tree
FUNC4 (tree type, double_int cst)
{
  cst = FUNC3 (cst, FUNC0 (type), FUNC1 (type));

  return FUNC2 (type, cst.low, cst.high);
}