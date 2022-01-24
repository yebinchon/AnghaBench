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
struct TYPE_9__ {int /*<<< orphan*/ * q_next; } ;
struct TYPE_10__ {char* rname; scalar_t__ rdaddr; scalar_t__ daddr; TYPE_1__ q; int /*<<< orphan*/ * tsap; int /*<<< orphan*/ * iriap; int /*<<< orphan*/  ttp_connect; } ;
typedef  TYPE_2__ irnet_socket ;
typedef  int /*<<< orphan*/  irda_queue_t ;
struct TYPE_11__ {int /*<<< orphan*/  spinlock; int /*<<< orphan*/  list; scalar_t__ running; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ DEV_ADDR_ANY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,char*) ; 
 int EBUSY ; 
 int /*<<< orphan*/  IRDA_SOCK_ERROR ; 
 int /*<<< orphan*/  IRDA_SOCK_INFO ; 
 int /*<<< orphan*/  IRDA_SOCK_TRACE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 TYPE_3__ irnet_server ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC12(irnet_socket *	self)
{
  int		err;

  FUNC1(IRDA_SOCK_TRACE, "(self=0x%p)\n", self);

  /* Check if we are already trying to connect.
   * Because irda_irnet_connect() can be called directly by pppd plus
   * packet retries in ppp_generic and connect may take time, plus we may
   * race with irnet_connect_indication(), we need to be careful there... */
  if(FUNC11(0, &self->ttp_connect))
    FUNC4(-EBUSY, IRDA_SOCK_INFO, "Already connecting...\n");
  if((self->iriap != NULL) || (self->tsap != NULL))
    FUNC2(IRDA_SOCK_ERROR, "Socket not cleaned up...\n");

  /* Insert ourselves in the hashbin so that the IrNET server can find us.
   * Notes : 4th arg is string of 32 char max and must be null terminated
   *	     When 4th arg is used (string), 3rd arg isn't (int)
   *	     Can't re-insert (MUST remove first) so check for that... */
  if((irnet_server.running) && (self->q.q_next == NULL))
    {
      FUNC9(&irnet_server.spinlock);
      FUNC5(irnet_server.list, (irda_queue_t *) self, 0, self->rname);
      FUNC10(&irnet_server.spinlock);
      FUNC0(IRDA_SOCK_INFO, "Inserted ``%s'' in hashbin...\n", self->rname);
    }

  /* If we don't have anything (no address, no name) */
  if((self->rdaddr == DEV_ADDR_ANY) && (self->rname[0] == '\0'))
    {
      /* Try to find a suitable address */
      if((err = FUNC6(self)) != 0)
	FUNC4(err, IRDA_SOCK_INFO, "auto-connect failed!\n");
      /* In most cases, the call above is non-blocking */
    }
  else
    {
      /* If we have only the name (no address), try to get an address */
      if(self->rdaddr == DEV_ADDR_ANY)
	{
	  if((err = FUNC7(self)) != 0)
	    FUNC4(err, IRDA_SOCK_INFO, "name connect failed!\n");
	}
      else
	/* Use the requested destination address */
	self->daddr = self->rdaddr;

      /* Query remote LM-IAS to find LSAP selector */
      FUNC8(self);
      /* The above call is non blocking */
    }

  /* At this point, we are waiting for the IrDA stack to call us back,
   * or we have already failed.
   * We will finish the connection procedure in irnet_connect_tsap().
   */
  FUNC3(IRDA_SOCK_TRACE, "\n");
  return(0);
}