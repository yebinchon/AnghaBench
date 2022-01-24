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
struct neighbour {int nud_state; TYPE_1__* parms; int /*<<< orphan*/  probes; scalar_t__ updated; } ;
struct TYPE_2__ {scalar_t__ retrans_time; int /*<<< orphan*/  ucast_probes; } ;

/* Variables and functions */
 int NUD_FAILED ; 
 int NUD_PROBE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct neighbour*,scalar_t__) ; 

void FUNC2(struct neighbour *neigh)
{
	neigh->updated = jiffies;
	if (!(neigh->nud_state & NUD_FAILED))
		return;
	neigh->nud_state = NUD_PROBE;
	FUNC0(&neigh->probes, neigh->parms->ucast_probes);
	FUNC1(neigh,
			jiffies + neigh->parms->retrans_time);
}