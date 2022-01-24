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
struct TYPE_5__ {int disco_number; int disco_index; int /*<<< orphan*/  ttp_connect; int /*<<< orphan*/ * discoveries; int /*<<< orphan*/ * iriap; int /*<<< orphan*/  daddr; int /*<<< orphan*/  mask; } ;
typedef  TYPE_1__ irnet_socket ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  DEV_ADDR_ANY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  DISCOVERY_DEFAULT_SLOTS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ENETUNREACH ; 
 int /*<<< orphan*/  IRDA_SR_INFO ; 
 int /*<<< orphan*/  IRDA_SR_TRACE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int
FUNC9(irnet_socket *	self)
{
  int	ret;

  FUNC1(IRDA_SR_TRACE, "(self=0x%p)\n", self);

  /* Ask lmp for the current discovery log */
  self->discoveries = FUNC6(&self->disco_number, self->mask,
					    DISCOVERY_DEFAULT_SLOTS);

  /* Check if the we got some results */
  if(self->discoveries == NULL)
    {
      self->disco_number = -1;
      FUNC4(0, &self->ttp_connect);
      FUNC3(-ENETUNREACH, IRDA_SR_INFO, "No Cachelog...\n");
    }
  FUNC0(IRDA_SR_INFO, "Got the log (0x%p), size is %d\n",
	self->discoveries, self->disco_number);

  /* Start with the first discovery */
  self->disco_index = -1;
  self->daddr = DEV_ADDR_ANY;

  /* This will fail if the log is empty - this is non-blocking */
  ret = FUNC7(self);
  if(ret)
    {
      /* Close IAP */
      if(self->iriap)
	FUNC5(self->iriap);
      self->iriap = NULL;

      /* Cleanup our copy of the discovery log */
      FUNC8(self->discoveries);
      self->discoveries = NULL;

      FUNC4(0, &self->ttp_connect);
      FUNC3(-ENETUNREACH, IRDA_SR_INFO, "Cachelog empty...\n");
    }

  /* Follow me in irnet_discovervalue_confirm() */

  FUNC2(IRDA_SR_TRACE, "\n");
  return(0);
}