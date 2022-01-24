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
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_4__ {TYPE_1__* machine; } ;
struct TYPE_3__ {int ra_needs_full_frame; int ra_need_lr; } ;

/* Variables and functions */
 scalar_t__ ABI_AIX ; 
 scalar_t__ DEFAULT_ABI ; 
 int /*<<< orphan*/  LINK_REGISTER_REGNUM ; 
 int /*<<< orphan*/  Pmode ; 
 int /*<<< orphan*/  RETURN_ADDRESS_OFFSET ; 
 TYPE_2__* cfun ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ flag_pic ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

rtx
FUNC5 (int count, rtx frame)
{
  /* Currently we don't optimize very well between prolog and body
     code and for PIC code the code can be actually quite bad, so
     don't try to be too clever here.  */
  if (count != 0 || (DEFAULT_ABI != ABI_AIX && flag_pic))
    {
      cfun->machine->ra_needs_full_frame = 1;

      return
	FUNC1
	  (Pmode,
	   FUNC3
	   (Pmode,
	    FUNC4 (FUNC0
			   (FUNC1 (Pmode,
					 FUNC3 (Pmode, frame))),
			   RETURN_ADDRESS_OFFSET)));
    }

  cfun->machine->ra_need_lr = 1;
  return FUNC2 (Pmode, LINK_REGISTER_REGNUM);
}