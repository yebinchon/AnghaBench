#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int tx_flow; int /*<<< orphan*/  chan; } ;
typedef  TYPE_1__ irnet_socket ;
typedef  int LOCAL_FLOW ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
#define  FLOW_START 129 
#define  FLOW_STOP 128 
 int /*<<< orphan*/  IRDA_CB_INFO ; 
 int /*<<< orphan*/  IRDA_TCB_TRACE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(void *	instance,
		      void *	sap,
		      LOCAL_FLOW flow)
{
  irnet_socket *	self = (irnet_socket *) instance;
  LOCAL_FLOW		oldflow = self->tx_flow;

  FUNC1(IRDA_TCB_TRACE, "(self=0x%p, flow=%d)\n", self, flow);

  /* Update our state */
  self->tx_flow = flow;

  /* Check what IrTTP want us to do... */
  switch(flow)
    {
    case FLOW_START:
      FUNC0(IRDA_CB_INFO, "IrTTP wants us to start again\n");
      /* Check if we really need to wake up PPP */
      if(oldflow == FLOW_STOP)
	FUNC3(&self->chan);
      else
	FUNC0(IRDA_CB_INFO, "But we were already transmitting !!!\n");
      break;
    case FLOW_STOP:
      FUNC0(IRDA_CB_INFO, "IrTTP wants us to slow down\n");
      break;
    default:
      FUNC0(IRDA_CB_INFO, "Unknown flow command!\n");
      break;
    }

  FUNC2(IRDA_TCB_TRACE, "\n");
}