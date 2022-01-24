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
struct data_dependence_relation {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct data_dependence_relation*) ; 
 scalar_t__ FUNC1 (struct data_dependence_relation*) ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct data_dependence_relation*) ; 
 int /*<<< orphan*/  heap ; 
 int /*<<< orphan*/  subscript_p ; 

void
FUNC4 (struct data_dependence_relation *ddr)
{
  if (ddr == NULL)
    return;

  if (FUNC0 (ddr) == NULL_TREE && FUNC1 (ddr))
    FUNC2 (subscript_p, heap, FUNC1 (ddr));

  FUNC3 (ddr);
}