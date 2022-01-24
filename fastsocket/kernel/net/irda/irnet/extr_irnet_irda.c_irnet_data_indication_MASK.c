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
struct sk_buff {unsigned char* data; int len; } ;
struct TYPE_3__ {int /*<<< orphan*/  chan; int /*<<< orphan*/  ppp_open; } ;
typedef  TYPE_1__ irnet_socket ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,TYPE_1__*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IRDA_CB_ERROR ; 
 int /*<<< orphan*/  IRDA_TCB_TRACE ; 
 unsigned char PPP_ALLSTATIONS ; 
 unsigned char PPP_UI ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 unsigned char* FUNC7 (struct sk_buff*,int) ; 
 scalar_t__* FUNC8 (struct sk_buff*,int) ; 

__attribute__((used)) static int
FUNC9(void *	instance,
		      void *	sap,
		      struct sk_buff *skb)
{
  irnet_socket *	ap = (irnet_socket *) instance;
  unsigned char *	p;
  int			code = 0;

  FUNC1(IRDA_TCB_TRACE, "(self/ap=0x%p, skb=0x%p)\n",
	 ap, skb);
  FUNC0(skb != NULL, 0, IRDA_CB_ERROR, "skb is NULL !!!\n");

  /* Check is ppp is ready to receive our packet */
  if(!ap->ppp_open)
    {
      FUNC2(IRDA_CB_ERROR, "PPP not ready, dropping packet...\n");
      /* When we return error, TTP will need to requeue the skb and
       * will stop the sender. IrTTP will stall until we send it a
       * flow control request... */
      return -ENOMEM;
    }

  /* strip address/control field if present */
  p = skb->data;
  if((p[0] == PPP_ALLSTATIONS) && (p[1] == PPP_UI))
    {
      /* chop off address/control */
      if(skb->len < 3)
	goto err_exit;
      p = FUNC7(skb, 2);
    }

  /* decompress protocol field if compressed */
  if(p[0] & 1)
    {
      /* protocol is compressed */
      FUNC8(skb, 1)[0] = 0;
    }
  else
    if(skb->len < 2)
      goto err_exit;

  /* pass to generic ppp layer */
  /* Note : how do I know if ppp can accept or not the packet ? This is
   * essential if I want to manage flow control smoothly... */
  FUNC5(&ap->chan, skb);

  FUNC3(IRDA_TCB_TRACE, "\n");
  return 0;

 err_exit:
  FUNC2(IRDA_CB_ERROR, "Packet too small, dropping...\n");
  FUNC4(skb);
  FUNC6(&ap->chan, code);
  return 0;	/* Don't return an error code, only for flow control... */
}