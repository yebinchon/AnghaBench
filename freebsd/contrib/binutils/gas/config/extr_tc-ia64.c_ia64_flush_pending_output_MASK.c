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
struct TYPE_2__ {int /*<<< orphan*/  keep_pending_output; } ;

/* Variables and functions */
 int SEC_CODE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ md ; 
 int /*<<< orphan*/  now_seg ; 
 int /*<<< orphan*/  stdoutput ; 

void
FUNC3 ()
{
  if (!md.keep_pending_output
      && FUNC0 (stdoutput, now_seg) & SEC_CODE)
    {
      /* ??? This causes many unnecessary stop bits to be emitted.
	 Unfortunately, it isn't clear if it is safe to remove this.  */
      FUNC2 (1, 0, 0);
      FUNC1 ();
    }
}