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
struct TYPE_3__ {int disco_number; int /*<<< orphan*/ * discoveries; } ;
typedef  TYPE_1__ irnet_socket ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  DISCOVERY_DEFAULT_SLOTS ; 
 int /*<<< orphan*/  S_LAN ; 
 int /*<<< orphan*/ * FUNC1 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(irnet_socket *	ap)
{
  __u16		mask = FUNC2(S_LAN);

  /* Ask IrLMP for the current discovery log */
  ap->discoveries = FUNC1(&ap->disco_number, mask,
					  DISCOVERY_DEFAULT_SLOTS);

  /* Check if the we got some results */
  if(ap->discoveries == NULL)
    ap->disco_number = -1;

  FUNC0(CTRL_INFO, "Got the log (0x%p), size is %d\n",
	ap->discoveries, ap->disco_number);
}