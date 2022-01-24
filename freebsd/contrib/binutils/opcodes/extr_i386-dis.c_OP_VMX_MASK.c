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
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int PREFIX_DATA ; 
 int PREFIX_REPZ ; 
 TYPE_1__ modrm ; 
 int /*<<< orphan*/  obuf ; 
 int prefixes ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int used_prefixes ; 
 int v_mode ; 

__attribute__((used)) static void
FUNC2 (int bytemode, int sizeflag)
{
  if (modrm.mod == 3)
    {
      FUNC1 (obuf, "rdrand");
      FUNC0 (v_mode, sizeflag);
    }
  else
    {
      used_prefixes |= (prefixes & (PREFIX_DATA | PREFIX_REPZ));
      if (prefixes & PREFIX_DATA)
	FUNC1 (obuf, "vmclear");
      else if (prefixes & PREFIX_REPZ)
	FUNC1 (obuf, "vmxon");
      else
	FUNC1 (obuf, "vmptrld");
      FUNC0 (bytemode, sizeflag);
    }
}