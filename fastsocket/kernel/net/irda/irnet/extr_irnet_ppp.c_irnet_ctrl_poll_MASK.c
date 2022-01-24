#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  poll_table ;
struct TYPE_6__ {scalar_t__ event_index; int disco_number; int /*<<< orphan*/ * discoveries; } ;
typedef  TYPE_1__ irnet_socket ;
struct TYPE_7__ {scalar_t__ index; int /*<<< orphan*/  rwait; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL_TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 unsigned int POLLIN ; 
 unsigned int POLLOUT ; 
 unsigned int POLLRDNORM ; 
 unsigned int POLLWRNORM ; 
 TYPE_3__ irnet_events ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline unsigned int
FUNC4(irnet_socket *	ap,
		struct file *	file,
		poll_table *	wait)
{
  unsigned int mask;

  FUNC0(CTRL_TRACE, "(ap=0x%p)\n", ap);

  FUNC3(file, &irnet_events.rwait, wait);
  mask = POLLOUT | POLLWRNORM;
  /* If there is unread events */
  if(ap->event_index != irnet_events.index)
    mask |= POLLIN | POLLRDNORM;
#ifdef INITIAL_DISCOVERY
  if(ap->disco_number != -1)
    {
      /* Test if it's the first time and therefore we need to get the log */
      if(ap->discoveries == NULL)
	irnet_get_discovery_log(ap);
      /* Recheck */
      if(ap->disco_number != -1)
	mask |= POLLIN | POLLRDNORM;
    }
#endif /* INITIAL_DISCOVERY */

  FUNC1(CTRL_TRACE, " - mask=0x%X\n", mask);
  return mask;
}