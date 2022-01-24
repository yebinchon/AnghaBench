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
typedef  int /*<<< orphan*/  tree ;
struct eh_region {scalar_t__ resume; } ;
struct TYPE_4__ {TYPE_1__* eh; } ;
struct TYPE_3__ {int /*<<< orphan*/  region_array; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct eh_region* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  VOIDmode ; 
 TYPE_2__* cfun ; 
 int /*<<< orphan*/  eh_region ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

void
FUNC7 (tree exp)
{
  int region_nr = FUNC0 (FUNC1 (exp, 0));
  struct eh_region *reg = FUNC2 (eh_region,
				     cfun->eh->region_array, region_nr);

  FUNC5 (!reg->resume);
  reg->resume = FUNC4 (FUNC6 (VOIDmode, region_nr));
  FUNC3 ();
}