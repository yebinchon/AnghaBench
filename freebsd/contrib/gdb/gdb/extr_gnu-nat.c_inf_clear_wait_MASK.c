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
struct TYPE_5__ {scalar_t__ handler; scalar_t__ reply; } ;
struct TYPE_4__ {int /*<<< orphan*/  kind; } ;
struct TYPE_6__ {TYPE_2__ exc; scalar_t__ suppress; scalar_t__ thread; TYPE_1__ status; } ;
struct inf {TYPE_3__ wait; } ;

/* Variables and functions */
 scalar_t__ MACH_PORT_NULL ; 
 int /*<<< orphan*/  TARGET_WAITKIND_SPURIOUS ; 
 int /*<<< orphan*/  FUNC0 (struct inf*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void
FUNC3 (struct inf *inf)
{
  FUNC0 (inf, "clearing wait");
  inf->wait.status.kind = TARGET_WAITKIND_SPURIOUS;
  inf->wait.thread = 0;
  inf->wait.suppress = 0;
  if (inf->wait.exc.handler != MACH_PORT_NULL)
    {
      FUNC1 (FUNC2 (), inf->wait.exc.handler);
      inf->wait.exc.handler = MACH_PORT_NULL;
    }
  if (inf->wait.exc.reply != MACH_PORT_NULL)
    {
      FUNC1 (FUNC2 (), inf->wait.exc.reply);
      inf->wait.exc.reply = MACH_PORT_NULL;
    }
}