#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  symbolS ;
struct TYPE_2__ {scalar_t__ fr_type; } ;

/* Variables and functions */
 scalar_t__ rs_dummy ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zero_address_frag ; 

__attribute__((used)) static void
FUNC2 (symbolS *symbolP)
{
  if (FUNC0 (symbolP)->fr_type != rs_dummy)
    FUNC1 (symbolP, &zero_address_frag);
}