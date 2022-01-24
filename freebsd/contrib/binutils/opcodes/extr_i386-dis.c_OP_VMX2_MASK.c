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
struct TYPE_2__ {int mod; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__ modrm ; 
 int /*<<< orphan*/  obuf ; 
 int /*<<< orphan*/  q_mode ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  v_mode ; 

__attribute__((used)) static void
FUNC3 (int bytemode, int sizeflag)
{
  if (modrm.mod == 3)
    {
      FUNC2 (obuf, "rdseed");
      FUNC0 (v_mode, sizeflag);
    }
  else
    {
      FUNC2 (obuf, "vmptrst");
      FUNC1 (q_mode, sizeflag);
    }
}