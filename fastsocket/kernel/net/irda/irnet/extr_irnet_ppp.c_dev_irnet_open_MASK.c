#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int mtu; int hdrlen; int /*<<< orphan*/ * ops; struct irnet_socket* private; } ;
struct irnet_socket {int mru; unsigned int* xaccm; unsigned int raccm; int /*<<< orphan*/  event_index; TYPE_1__ chan; scalar_t__ ppp_open; struct file* file; } ;
struct inode {int dummy; } ;
struct file {struct irnet_socket* private_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct file*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct irnet_socket*) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  FS_ERROR ; 
 int /*<<< orphan*/  FS_TRACE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PPP_HDRLEN ; 
 int TTP_MAX_HEADER ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct irnet_socket*) ; 
 TYPE_2__ irnet_events ; 
 int /*<<< orphan*/  irnet_ppp_ops ; 
 int /*<<< orphan*/  FUNC6 (struct irnet_socket*) ; 
 struct irnet_socket* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int
FUNC10(struct inode *	inode,
	       struct file *	file)
{
  struct irnet_socket *	ap;
  int			err;

  FUNC1(FS_TRACE, "(file=0x%p)\n", file);

#ifdef SECURE_DEVIRNET
  /* This could (should?) be enforced by the permissions on /dev/irnet. */
  if(!capable(CAP_NET_ADMIN))
    return -EPERM;
#endif /* SECURE_DEVIRNET */

  /* Allocate a private structure for this IrNET instance */
  ap = FUNC7(sizeof(*ap), GFP_KERNEL);
  FUNC0(ap == NULL, -ENOMEM, FS_ERROR, "Can't allocate struct irnet...\n");

  FUNC8();
  /* initialize the irnet structure */
  ap->file = file;

  /* PPP channel setup */
  ap->ppp_open = 0;
  ap->chan.private = ap;
  ap->chan.ops = &irnet_ppp_ops;
  ap->chan.mtu = (2048 - TTP_MAX_HEADER - 2 - PPP_HDRLEN);
  ap->chan.hdrlen = 2 + TTP_MAX_HEADER;		/* for A/C + Max IrDA hdr */
  /* PPP parameters */
  ap->mru = (2048 - TTP_MAX_HEADER - 2 - PPP_HDRLEN);
  ap->xaccm[0] = ~0U;
  ap->xaccm[3] = 0x60000000U;
  ap->raccm = ~0U;

  /* Setup the IrDA part... */
  err = FUNC5(ap);
  if(err)
    {
      FUNC2(FS_ERROR, "Can't setup IrDA link...\n");
      FUNC6(ap);
      FUNC9();
      return err;
    }

  /* For the control channel */
  ap->event_index = irnet_events.index;	/* Cancel all past events */

  /* Put our stuff where we will be able to find it later */
  file->private_data = ap;

  FUNC3(FS_TRACE, " - ap=0x%p\n", ap);
  FUNC9();
  return 0;
}