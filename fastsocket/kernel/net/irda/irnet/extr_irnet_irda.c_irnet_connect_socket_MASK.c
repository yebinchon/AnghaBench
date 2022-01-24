#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct qos_info {int dummy; } ;
struct TYPE_15__ {int /*<<< orphan*/  rname; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; int /*<<< orphan*/  chan; int /*<<< orphan*/ * discoveries; int /*<<< orphan*/ * iriap; int /*<<< orphan*/  ttp_connect; int /*<<< orphan*/  ttp_open; int /*<<< orphan*/  max_sdu_size_rx; TYPE_2__* tsap; scalar_t__ max_data_size; scalar_t__ max_sdu_size_tx; int /*<<< orphan*/  max_header_size; int /*<<< orphan*/  dtsap_sel; int /*<<< orphan*/  stsap_sel; } ;
typedef  TYPE_1__ irnet_socket ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  scalar_t__ __u32 ;
struct TYPE_16__ {int /*<<< orphan*/  dtsap_sel; int /*<<< orphan*/  stsap_sel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  IRDA_SERV_ERROR ; 
 int /*<<< orphan*/  IRDA_SERV_TRACE ; 
 int /*<<< orphan*/  IRNET_CONNECT_FROM ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int
FUNC15(irnet_socket *	server,
		     irnet_socket *	new,
		     struct qos_info *	qos,
		     __u32		max_sdu_size,
		     __u8		max_header_size)
{
  FUNC1(IRDA_SERV_TRACE, "(server=0x%p, new=0x%p)\n",
	 server, new);

  /* Now attach up the new socket */
  new->tsap = FUNC7(server->tsap, new);
  FUNC0(new->tsap == NULL, -1, IRDA_SERV_ERROR, "dup failed!\n");

  /* Set up all the relevant parameters on the new socket */
  new->stsap_sel = new->tsap->stsap_sel;
  new->dtsap_sel = new->tsap->dtsap_sel;
  new->saddr = FUNC10(new->tsap);
  new->daddr = FUNC8(new->tsap);

  new->max_header_size = max_header_size;
  new->max_sdu_size_tx = max_sdu_size;
  new->max_data_size   = max_sdu_size;
#ifdef STREAM_COMPAT
  /* If we want to receive "stream sockets" */
  if(max_sdu_size == 0)
    new->max_data_size = irttp_get_max_seg_size(new->tsap);
#endif /* STREAM_COMPAT */

  /* Clean up the original one to keep it in listen state */
  FUNC11(server->tsap);

  /* Send a connection response on the new socket */
  FUNC6(new->tsap, new->max_sdu_size_rx, NULL);

  /* Allow PPP to send its junk over the new socket... */
  FUNC14(0, &new->ttp_open);

  /* Not connecting anymore, and clean up last possible remains
   * of connection attempts on the socket */
  FUNC3(0, &new->ttp_connect);
  if(new->iriap)
    {
      FUNC4(new->iriap);
      new->iriap = NULL;
    }
  if(new->discoveries != NULL)
    {
      FUNC12(new->discoveries);
      new->discoveries = NULL;
    }

#ifdef CONNECT_INDIC_KICK
  /* As currently we don't block packets in ppp_irnet_send() while passive,
   * this is not really needed...
   * Also, not doing it give IrDA a chance to finish the setup properly
   * before being swamped with packets... */
  ppp_output_wakeup(&new->chan);
#endif /* CONNECT_INDIC_KICK */

  /* Notify the control channel */
  FUNC5(new, IRNET_CONNECT_FROM,
		   new->saddr, new->daddr, server->rname, 0);

  FUNC2(IRDA_SERV_TRACE, "\n");
  return 0;
}