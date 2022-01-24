#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct df {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  reg_chain; } ;
struct TYPE_3__ {int /*<<< orphan*/  reg_chain; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct df*,unsigned int) ; 
 TYPE_1__* FUNC1 (struct df*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct df*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 

void
FUNC4 (struct df *df, unsigned int regno, FILE *file)
{
  FUNC3 (file, "reg %d defs ", regno);
  FUNC2 (df, FUNC0 (df, regno)->reg_chain, file);
  FUNC3 (file, " uses ");
  FUNC2 (df, FUNC1 (df, regno)->reg_chain, file);
  FUNC3 (file, "\n");
}