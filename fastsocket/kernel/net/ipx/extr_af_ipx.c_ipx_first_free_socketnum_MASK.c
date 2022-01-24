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
struct ipx_interface {unsigned short if_sknum; int /*<<< orphan*/  if_sklist_lock; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 unsigned short IPX_MAX_EPHEMERAL_SOCKET ; 
 unsigned short IPX_MIN_EPHEMERAL_SOCKET ; 
 scalar_t__ FUNC0 (struct ipx_interface*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __be16 FUNC4(struct ipx_interface *intrfc)
{
	unsigned short socketNum = intrfc->if_sknum;

	FUNC2(&intrfc->if_sklist_lock);

	if (socketNum < IPX_MIN_EPHEMERAL_SOCKET)
		socketNum = IPX_MIN_EPHEMERAL_SOCKET;

	while (FUNC0(intrfc, FUNC1(socketNum)))
		if (socketNum > IPX_MAX_EPHEMERAL_SOCKET)
			socketNum = IPX_MIN_EPHEMERAL_SOCKET;
		else
			socketNum++;

	FUNC3(&intrfc->if_sklist_lock);
	intrfc->if_sknum = socketNum;

	return FUNC1(socketNum);
}