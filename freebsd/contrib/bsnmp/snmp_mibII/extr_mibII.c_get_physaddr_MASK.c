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
typedef  int /*<<< orphan*/  u_char ;
struct sockaddr_dl {scalar_t__ sdl_alen; } ;
struct mibrcvaddr {int /*<<< orphan*/  flags; } ;
struct mibif {scalar_t__ physaddrlen; int /*<<< orphan*/ * physaddr; int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIBRCVADDR_HW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 struct mibrcvaddr* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 struct mibrcvaddr* FUNC4 (struct mibif*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct mibrcvaddr*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void
FUNC7(struct mibif *ifp, struct sockaddr_dl *sdl, u_char *ptr)
{
	u_char *np;
	struct mibrcvaddr *rcv;

	if (sdl->sdl_alen == 0) {
		/* no address */
		if (ifp->physaddrlen != 0) {
			if ((rcv = FUNC3(ifp->index, ifp->physaddr,
			    ifp->physaddrlen)) != NULL)
				FUNC5(rcv);
			FUNC0(ifp->physaddr);
			ifp->physaddr = NULL;
			ifp->physaddrlen = 0;
		}
		return;
	}

	if (ifp->physaddrlen != sdl->sdl_alen) {
		/* length changed */
		if (ifp->physaddrlen) {
			/* delete olf receive address */
			if ((rcv = FUNC3(ifp->index, ifp->physaddr,
			    ifp->physaddrlen)) != NULL)
				FUNC5(rcv);
		}
		if ((np = FUNC6(ifp->physaddr, sdl->sdl_alen)) == NULL) {
			FUNC0(ifp->physaddr);
			ifp->physaddr = NULL;
			ifp->physaddrlen = 0;
			return;
		}
		ifp->physaddr = np;
		ifp->physaddrlen = sdl->sdl_alen;

	} else if (FUNC1(ifp->physaddr, ptr, ifp->physaddrlen) == 0) {
		/* no change */
		return;

	} else {
		/* address changed */

		/* delete olf receive address */
		if ((rcv = FUNC3(ifp->index, ifp->physaddr,
		    ifp->physaddrlen)) != NULL)
			FUNC5(rcv);
	}

	FUNC2(ifp->physaddr, ptr, ifp->physaddrlen);

	/* make new receive address */
	if ((rcv = FUNC4(ifp, ifp->physaddr, ifp->physaddrlen)) != NULL)
		rcv->flags |= MIBRCVADDR_HW;
}