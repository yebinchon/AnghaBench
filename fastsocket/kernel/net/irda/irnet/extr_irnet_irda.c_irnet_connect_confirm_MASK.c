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
struct sk_buff {scalar_t__ len; } ;
struct qos_info {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  rname; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; int /*<<< orphan*/  chan; int /*<<< orphan*/  ttp_connect; int /*<<< orphan*/  ttp_open; int /*<<< orphan*/  tsap; scalar_t__ max_data_size; scalar_t__ max_sdu_size_tx; int /*<<< orphan*/  max_header_size; } ;
typedef  TYPE_1__ irnet_socket ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  IRDA_CB_ERROR ; 
 int /*<<< orphan*/  IRDA_CB_INFO ; 
 int /*<<< orphan*/  IRDA_TCB_TRACE ; 
 int /*<<< orphan*/  IRNET_CONNECT_TO ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*,void*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC13(void *	instance,
		      void *	sap,
		      struct qos_info *qos,
		      __u32	max_sdu_size,
		      __u8	max_header_size,
		      struct sk_buff *skb)
{
  irnet_socket *	self = (irnet_socket *) instance;

  FUNC1(IRDA_TCB_TRACE, "(self=0x%p)\n", self);

  /* Check if socket is closing down (via irda_irnet_destroy()) */
  if(! FUNC12(0, &self->ttp_connect))
    {
      FUNC2(IRDA_CB_ERROR, "Socket no longer connecting. Ouch !\n");
      return;
    }

  /* How much header space do we need to reserve */
  self->max_header_size = max_header_size;

  /* IrTTP max SDU size in transmit direction */
  self->max_sdu_size_tx = max_sdu_size;
  self->max_data_size = max_sdu_size;
#ifdef STREAM_COMPAT
  if(max_sdu_size == 0)
    self->max_data_size = irttp_get_max_seg_size(self->tsap);
#endif /* STREAM_COMPAT */

  /* At this point, IrLMP has assigned our source address */
  self->saddr = FUNC8(self->tsap);

  /* Allow higher layer to access IrTTP */
  FUNC11(0, &self->ttp_open);
  FUNC4(0, &self->ttp_connect);	/* Not racy, IrDA traffic is serial */
  /* Give a kick in the ass of ppp_generic so that he sends us some data */
  FUNC10(&self->chan);

  /* Check size of received packet */
  if(skb->len > 0)
    {
#ifdef PASS_CONNECT_PACKETS
      DEBUG(IRDA_CB_INFO, "Passing connect packet to PPP.\n");
      /* Try to pass it to PPP */
      irnet_data_indication(instance, sap, skb);
#else /* PASS_CONNECT_PACKETS */
      FUNC2(IRDA_CB_ERROR, "Dropping non empty packet.\n");
      FUNC9(skb);	/* Note : will be optimised with other kfree... */
#endif /* PASS_CONNECT_PACKETS */
    }
  else
    FUNC9(skb);

  /* Notify the control channel */
  FUNC6(self, IRNET_CONNECT_TO,
		   self->saddr, self->daddr, self->rname, 0);

  FUNC3(IRDA_TCB_TRACE, "\n");
}