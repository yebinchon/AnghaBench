#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  __u16 ;
struct TYPE_6__ {int /*<<< orphan*/ * private; } ;
struct TYPE_8__ {int /*<<< orphan*/  ckey; int /*<<< orphan*/  stsap_sel; int /*<<< orphan*/ * file; TYPE_1__ chan; scalar_t__ ppp_open; } ;
struct TYPE_7__ {TYPE_3__ s; int /*<<< orphan*/  ias_obj; int /*<<< orphan*/  skey; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,TYPE_3__*) ; 
 int /*<<< orphan*/  IAS_KERNEL_ATTR ; 
 int /*<<< orphan*/  IRDA_SERV_TRACE ; 
 int /*<<< orphan*/  IRNET_IAS_VALUE ; 
 int /*<<< orphan*/  IRNET_SERVICE_NAME ; 
 int /*<<< orphan*/  S_LAN ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  irnet_discovery_indication ; 
 int /*<<< orphan*/  irnet_expiry_indication ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 TYPE_2__ irnet_server ; 
 int /*<<< orphan*/  jiffies ; 

__attribute__((used)) static inline int
FUNC10(void)
{
  __u16		hints;

  FUNC0(IRDA_SERV_TRACE, "()\n");

  /* Initialise the regular socket part of the server */
  FUNC2(&irnet_server.s);

  /* Open a local TSAP (an IrTTP instance) for the server */
  FUNC9(&irnet_server.s);

  /* PPP part setup */
  irnet_server.s.ppp_open = 0;
  irnet_server.s.chan.private = NULL;
  irnet_server.s.file = NULL;

  /* Get the hint bit corresponding to IrLAN */
  /* Note : we overload the IrLAN hint bit. As it is only a "hint", and as
   * we provide roughly the same functionality as IrLAN, this is ok.
   * In fact, the situation is similar as JetSend overloading the Obex hint
   */
  hints = FUNC7(S_LAN);

#ifdef ADVERTISE_HINT
  /* Register with IrLMP as a service (advertise our hint bit) */
  irnet_server.skey = irlmp_register_service(hints);
#endif /* ADVERTISE_HINT */

  /* Register with LM-IAS (so that people can connect to us) */
  irnet_server.ias_obj = FUNC5(IRNET_SERVICE_NAME, jiffies);
  FUNC3(irnet_server.ias_obj, IRNET_IAS_VALUE,
			   irnet_server.s.stsap_sel, IAS_KERNEL_ATTR);
  FUNC4(irnet_server.ias_obj);

#ifdef DISCOVERY_EVENTS
  /* Tell IrLMP we want to be notified of newly discovered nodes */
  irlmp_update_client(irnet_server.s.ckey, hints,
		      irnet_discovery_indication, irnet_expiry_indication,
		      (void *) &irnet_server.s);
#endif

  FUNC1(IRDA_SERV_TRACE, " - self=0x%p\n", &irnet_server.s);
  return 0;
}