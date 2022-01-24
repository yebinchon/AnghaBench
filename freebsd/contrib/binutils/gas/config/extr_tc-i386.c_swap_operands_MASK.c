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
typedef  int /*<<< orphan*/  const seg_entry ;
struct TYPE_2__ {int operands; int mem_operands; int /*<<< orphan*/  const** seg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__ i ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static void
FUNC2 (void)
{
  switch (i.operands)
    {
    case 4:
      FUNC1 (1, i.operands - 2);
    case 3:
    case 2:
      FUNC1 (0, i.operands - 1);
      break;
    default:
      FUNC0 ();
    }

  if (i.mem_operands == 2)
    {
      const seg_entry *temp_seg;
      temp_seg = i.seg[0];
      i.seg[0] = i.seg[1];
      i.seg[1] = temp_seg;
    }
}