#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  chan; scalar_t__ ppp_open; } ;
typedef  TYPE_3__ irnet_socket ;
typedef  int /*<<< orphan*/  irnet_event ;
typedef  void* __u32 ;
typedef  int /*<<< orphan*/  __u16 ;
struct TYPE_10__ {int index; int /*<<< orphan*/  rwait; int /*<<< orphan*/  spinlock; TYPE_2__* log; } ;
struct TYPE_7__ {int /*<<< orphan*/  word; } ;
struct TYPE_8__ {char* name; int unit; TYPE_1__ hints; void* saddr; void* daddr; int /*<<< orphan*/  event; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL_INFO ; 
 int /*<<< orphan*/  CTRL_TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,TYPE_3__*,int /*<<< orphan*/ ,void*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int IRNET_MAX_EVENTS ; 
 TYPE_5__ irnet_events ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(irnet_socket *	ap,
		 irnet_event	event,
		 __u32		saddr,
		 __u32		daddr,
		 char *		name,
		 __u16		hints)
{
  int			index;		/* In the log */

  FUNC1(CTRL_TRACE, "(ap=0x%p, event=%d, daddr=%08x, name=``%s'')\n",
	 ap, event, daddr, name);

  /* Protect this section via spinlock.
   * Note : as we are the only event producer, we only need to exclude
   * ourself when touching the log, which is nice and easy.
   */
  FUNC4(&irnet_events.spinlock);

  /* Copy the event in the log */
  index = irnet_events.index;
  irnet_events.log[index].event = event;
  irnet_events.log[index].daddr = daddr;
  irnet_events.log[index].saddr = saddr;
  /* Try to copy IrDA nickname */
  if(name)
    FUNC6(irnet_events.log[index].name, name);
  else
    irnet_events.log[index].name[0] = '\0';
  /* Copy hints */
  irnet_events.log[index].hints.word = hints;
  /* Try to get ppp unit number */
  if((ap != (irnet_socket *) NULL) && (ap->ppp_open))
    irnet_events.log[index].unit = FUNC3(&ap->chan);
  else
    irnet_events.log[index].unit = -1;

  /* Increment the index
   * Note that we increment the index only after the event is written,
   * to make sure that the readers don't get garbage... */
  irnet_events.index = (index + 1) % IRNET_MAX_EVENTS;

  FUNC0(CTRL_INFO, "New event index is %d\n", irnet_events.index);

  /* Spin lock end */
  FUNC5(&irnet_events.spinlock);

  /* Now : wake up everybody waiting for events... */
  FUNC7(&irnet_events.rwait);

  FUNC2(CTRL_TRACE, "\n");
}