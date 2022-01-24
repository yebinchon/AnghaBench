#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t disco_index; size_t disco_number; TYPE_1__* discoveries; int /*<<< orphan*/ * iriap; } ;
typedef  TYPE_2__ irnet_socket ;
struct TYPE_5__ {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  IAS_CLIENT ; 
 int /*<<< orphan*/  IRNET_IAS_VALUE ; 
 int /*<<< orphan*/  IRNET_SERVICE_NAME ; 
 int /*<<< orphan*/  LSAP_ANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  irnet_discovervalue_confirm ; 

__attribute__((used)) static inline int
FUNC3(irnet_socket *	self)
{
  /* Close the last instance of IrIAP, and open a new one.
   * We can't reuse the IrIAP instance in the IrIAP callback */
  if(self->iriap)
    {
      FUNC0(self->iriap);
      self->iriap = NULL;
    }
  /* Create a new IAP instance */
  self->iriap = FUNC2(LSAP_ANY, IAS_CLIENT, self,
			   irnet_discovervalue_confirm);
  if(self->iriap == NULL)
    return -ENOMEM;

  /* Next discovery - before the call to avoid races */
  self->disco_index++;

  /* Check if we have one more address to try */
  if(self->disco_index < self->disco_number)
    {
      /* Query remote LM-IAS */
      FUNC1(self->iriap,
				    self->discoveries[self->disco_index].saddr,
				    self->discoveries[self->disco_index].daddr,
				    IRNET_SERVICE_NAME, IRNET_IAS_VALUE);
      /* The above request is non-blocking.
       * After a while, IrDA will call us back in irnet_discovervalue_confirm()
       * We will then call irnet_ias_to_tsap() and come back here again... */
      return(0);
    }
  else
    return(1);
}