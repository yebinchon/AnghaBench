#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  name; TYPE_2__* instance; int /*<<< orphan*/  status_indication; int /*<<< orphan*/  flow_indication; int /*<<< orphan*/  data_indication; int /*<<< orphan*/  disconnect_indication; int /*<<< orphan*/  connect_indication; int /*<<< orphan*/  connect_confirm; } ;
typedef  TYPE_1__ notify_t ;
struct TYPE_10__ {int /*<<< orphan*/  stsap_sel; TYPE_3__* tsap; } ;
typedef  TYPE_2__ irnet_socket ;
struct TYPE_11__ {int /*<<< orphan*/  stsap_sel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  DEFAULT_INITIAL_CREDIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  IRDA_SR_ERROR ; 
 int /*<<< orphan*/  IRDA_SR_TRACE ; 
 int /*<<< orphan*/  IRNET_NOTIFY_NAME ; 
 int /*<<< orphan*/  LSAP_ANY ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  irnet_connect_confirm ; 
 int /*<<< orphan*/  irnet_connect_indication ; 
 int /*<<< orphan*/  irnet_data_indication ; 
 int /*<<< orphan*/  irnet_disconnect_indication ; 
 int /*<<< orphan*/  irnet_flow_indication ; 
 int /*<<< orphan*/  irnet_status_indication ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline int
FUNC6(irnet_socket *	self)
{
  notify_t	notify;		/* Callback structure */

  FUNC1(IRDA_SR_TRACE, "(self=0x%p)\n", self);

  FUNC0(self->tsap != NULL, -EBUSY, IRDA_SR_ERROR, "Already busy !\n");

  /* Initialize IrTTP callbacks to be used by the IrDA stack */
  FUNC3(&notify);
  notify.connect_confirm	= irnet_connect_confirm;
  notify.connect_indication	= irnet_connect_indication;
  notify.disconnect_indication	= irnet_disconnect_indication;
  notify.data_indication	= irnet_data_indication;
  /*notify.udata_indication	= NULL;*/
  notify.flow_indication	= irnet_flow_indication;
  notify.status_indication	= irnet_status_indication;
  notify.instance		= self;
  FUNC5(notify.name, IRNET_NOTIFY_NAME, sizeof(notify.name));

  /* Open an IrTTP instance */
  self->tsap = FUNC4(LSAP_ANY, DEFAULT_INITIAL_CREDIT,
			       &notify);
  FUNC0(self->tsap == NULL, -ENOMEM,
	 IRDA_SR_ERROR, "Unable to allocate TSAP !\n");

  /* Remember which TSAP selector we actually got */
  self->stsap_sel = self->tsap->stsap_sel;

  FUNC2(IRDA_SR_TRACE, " - tsap=0x%p, sel=0x%X\n",
	self->tsap, self->stsap_sel);
  return 0;
}