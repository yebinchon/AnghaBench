#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct irnet_socket {int /*<<< orphan*/  chan; scalar_t__ ppp_open; } ;
struct inode {int dummy; } ;
struct file {int /*<<< orphan*/ * private_data; } ;
typedef  struct irnet_socket irnet_socket ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct file*,struct irnet_socket*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FS_ERROR ; 
 int /*<<< orphan*/  FS_TRACE ; 
 int /*<<< orphan*/  FUNC4 (struct irnet_socket*) ; 
 int /*<<< orphan*/  FUNC5 (struct irnet_socket*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct inode *	inode,
		struct file *	file)
{
  irnet_socket *	ap = (struct irnet_socket *) file->private_data;

  FUNC1(FS_TRACE, "(file=0x%p, ap=0x%p)\n",
	 file, ap);
  FUNC0(ap == NULL, 0, FS_ERROR, "ap is NULL !!!\n");

  /* Detach ourselves */
  file->private_data = NULL;

  /* Close IrDA stuff */
  FUNC4(ap);

  /* Disconnect from the generic PPP layer if not already done */
  if(ap->ppp_open)
    {
      FUNC2(FS_ERROR, "Channel still registered - deregistering !\n");
      ap->ppp_open = 0;
      FUNC6(&ap->chan);
    }

  FUNC5(ap);

  FUNC3(FS_TRACE, "\n");
  return 0;
}