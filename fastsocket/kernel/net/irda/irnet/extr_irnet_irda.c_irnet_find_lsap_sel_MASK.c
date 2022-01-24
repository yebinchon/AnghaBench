#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  daddr; int /*<<< orphan*/  rsaddr; int /*<<< orphan*/  iriap; int /*<<< orphan*/  errno; } ;
typedef  TYPE_1__ irnet_socket ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  EHOSTUNREACH ; 
 int /*<<< orphan*/  IAS_CLIENT ; 
 int /*<<< orphan*/  IRDA_SR_ERROR ; 
 int /*<<< orphan*/  IRDA_SR_TRACE ; 
 int /*<<< orphan*/  IRNET_IAS_VALUE ; 
 int /*<<< orphan*/  IRNET_SERVICE_NAME ; 
 int /*<<< orphan*/  LSAP_ANY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  irnet_getvalue_confirm ; 

__attribute__((used)) static inline int
FUNC5(irnet_socket *	self)
{
  FUNC1(IRDA_SR_TRACE, "(self=0x%p)\n", self);

  /* This should not happen */
  FUNC0(self->iriap, -EBUSY, IRDA_SR_ERROR, "busy with a previous query.\n");

  /* Create an IAP instance, will be closed in irnet_getvalue_confirm() */
  self->iriap = FUNC4(LSAP_ANY, IAS_CLIENT, self,
			   irnet_getvalue_confirm);

  /* Treat unexpected signals as disconnect */
  self->errno = -EHOSTUNREACH;

  /* Query remote LM-IAS */
  FUNC3(self->iriap, self->rsaddr, self->daddr,
				IRNET_SERVICE_NAME, IRNET_IAS_VALUE);

  /* The above request is non-blocking.
   * After a while, IrDA will call us back in irnet_getvalue_confirm()
   * We will then call irnet_ias_to_tsap() and finish the
   * connection procedure */

  FUNC2(IRDA_SR_TRACE, "\n");
  return 0;
}