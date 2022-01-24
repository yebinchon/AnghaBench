#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  u_char ;
struct mibif {int index; } ;
struct TYPE_2__ {int len; int* subs; } ;
struct mibarp {int physlen; int /*<<< orphan*/  phys; TYPE_1__ index; scalar_t__ flags; } ;
struct in_addr {int /*<<< orphan*/  s_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mibarp*,int /*<<< orphan*/ *) ; 
 struct mibarp* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  mibarp_list ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

struct mibarp *
FUNC4(const struct mibif *ifp, struct in_addr in, const u_char *phys,
    size_t physlen)
{
	struct mibarp *at;
	uint32_t a = FUNC3(in.s_addr);

	if ((at = FUNC1(sizeof(*at))) == NULL)
		return (NULL);
	at->flags = 0;

	at->index.len = 5;
	at->index.subs[0] = ifp->index;
	at->index.subs[1] = (a >> 24) & 0xff;
	at->index.subs[2] = (a >> 16) & 0xff;
	at->index.subs[3] = (a >>  8) & 0xff;
	at->index.subs[4] = (a >>  0) & 0xff;
	if ((at->physlen = physlen) > sizeof(at->phys))
		at->physlen = sizeof(at->phys);
	FUNC2(at->phys, phys, at->physlen);

	FUNC0(at, &mibarp_list);

	return (at);
}