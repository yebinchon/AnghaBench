#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  term_cmd; } ;
struct TYPE_5__ {int /*<<< orphan*/  cmdb; } ;
struct TYPE_6__ {TYPE_1__ getreg; TYPE_2__ setmem; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 TYPE_3__* current_monitor ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static int
FUNC2 (CORE_ADDR memaddr, char *myaddr, int len)
{
  unsigned char val;
  int written = 0;
  if (len == 0)
    return 0;
  /* Enter the sub mode */
  FUNC1 (current_monitor->setmem.cmdb, memaddr);
  FUNC0 (NULL, 0);
  while (len)
    {
      val = *myaddr;
      FUNC1 ("%x\r", val);
      myaddr++;
      memaddr++;
      written++;
      /* If we wanted to, here we could validate the address */
      FUNC0 (NULL, 0);
      len--;
    }
  /* Now exit the sub mode */
  FUNC1 (current_monitor->getreg.term_cmd);
  FUNC0 (NULL, 0);
  return written;
}