#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct irda_device_info {scalar_t__ daddr; int /*<<< orphan*/  info; } ;
struct TYPE_4__ {scalar_t__ daddr; char* rname; } ;
typedef  TYPE_1__ irnet_socket ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  DISCOVERY_DEFAULT_SLOTS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  ENETUNREACH ; 
 int /*<<< orphan*/  IRDA_SERV_INFO ; 
 int /*<<< orphan*/  IRDA_SERV_TRACE ; 
 struct irda_device_info* FUNC4 (int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct irda_device_info*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline int
FUNC7(irnet_socket *	self)
{
  struct irda_device_info *discoveries;	/* Copy of the discovery log */
  int	number;			/* Number of nodes in the log */
  int	i;

  FUNC1(IRDA_SERV_TRACE, "(self=0x%p)\n", self);

  /* Ask lmp for the current discovery log */
  discoveries = FUNC4(&number, 0xffff,
				      DISCOVERY_DEFAULT_SLOTS);
  /* Check if the we got some results */
  if (discoveries == NULL)
    FUNC3(-ENETUNREACH, IRDA_SERV_INFO, "Cachelog empty...\n");

  /* Now, check all discovered devices (if any) */
  for(i = 0; i < number; i++)
    {
      /* Does the name match ? */
      if(discoveries[i].daddr == self->daddr)
	{
	  /* Yes !!! Get it.. */
	  FUNC6(self->rname, discoveries[i].info, sizeof(self->rname));
	  self->rname[sizeof(self->rname) - 1] = '\0';
	  FUNC0(IRDA_SERV_INFO, "Device 0x%08x is in fact ``%s''.\n",
		self->daddr, self->rname);
	  FUNC5(discoveries);
	  FUNC2(IRDA_SERV_TRACE, "\n");
	  return 0;
	}
    }
  /* No luck ! */
  FUNC2(IRDA_SERV_INFO, ": cannot discover device 0x%08x !!!\n", self->daddr);
  FUNC5(discoveries);
  return(-EADDRNOTAVAIL);
}