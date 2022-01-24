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
struct eh_region {int dummy; } ;
typedef  int /*<<< orphan*/  basic_block ;

/* Variables and functions */
 int EDGE_ABNORMAL ; 
 int EDGE_EH ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct eh_region*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4 (struct eh_region *region, void *data)
{
  tree stmt, lab;
  basic_block src, dst;

  stmt = (tree) data;
  lab = FUNC1 (region);

  src = FUNC0 (stmt);
  dst = FUNC2 (lab);

  FUNC3 (src, dst, EDGE_ABNORMAL | EDGE_EH);
}