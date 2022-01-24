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
struct TYPE_2__ {int sequence; int /*<<< orphan*/ * symbol; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__ mips_relax ; 

__attribute__((used)) static void
FUNC1 (symbolS *symbol)
{
  FUNC0 (mips_relax.sequence == 0);
  mips_relax.sequence = 1;
  mips_relax.symbol = symbol;
}