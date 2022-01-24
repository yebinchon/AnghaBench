#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_9__ {int /*<<< orphan*/  rcv_discards; int /*<<< orphan*/  rcv_errors; int /*<<< orphan*/  xmt_errors; int /*<<< orphan*/  rcv_ucast; int /*<<< orphan*/  rcv_bytes; int /*<<< orphan*/  xmt_ucast; int /*<<< orphan*/  xmt_bytes; } ;
struct TYPE_8__ {int /*<<< orphan*/  rcv_tcp_bytes; int /*<<< orphan*/  rcv_tcp_segs; int /*<<< orphan*/  xmit_tcp_bytes; int /*<<< orphan*/  xmit_tcp_segs; } ;
struct slicnet_stats {TYPE_4__ iface; TYPE_3__ tcp; } ;
struct sliccard {int pingstatus; } ;
struct slic_upr {scalar_t__ adapter; int upr_request; struct slic_upr* next; } ;
struct slic_stats {scalar_t__ rcv_drops_gb; scalar_t__ rcv_other_error_gb; scalar_t__ xmit_other_error_gb; scalar_t__ xmit_excess_collisions_gb; scalar_t__ xmit_collisions_gb; scalar_t__ rcv_unicasts_gb; scalar_t__ rcv_bytes_gb; scalar_t__ xmit_unicasts_gb; scalar_t__ xmit_bytes_gb; scalar_t__ rcv_tcp_bytes_gb; scalar_t__ rcv_tcp_segs_gb; scalar_t__ xmit_tcp_bytes_gb; scalar_t__ xmit_tcp_segs_gb; } ;
struct TYPE_10__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  lock; } ;
struct adapter {scalar_t__ port; TYPE_5__ upr_lock; scalar_t__ rcv_drops; TYPE_2__* netdev; struct slicnet_stats slic_stats; struct slic_stats inicstats_prev; TYPE_1__* pshmem; scalar_t__ upr_busy; struct slic_upr* upr_list; struct sliccard* card; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  inicstats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ISR_PINGDSMASK ; 
 int ISR_UPCERR ; 
#define  SLIC_UPR_ENCT 135 
#define  SLIC_UPR_ENLB 134 
#define  SLIC_UPR_PDWN 133 
#define  SLIC_UPR_PING 132 
#define  SLIC_UPR_RCONFIG 131 
#define  SLIC_UPR_RLSR 130 
#define  SLIC_UPR_RPHY 129 
#define  SLIC_UPR_STATS 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct slic_upr*) ; 
 int /*<<< orphan*/  FUNC4 (struct slic_stats*,struct slic_stats*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct adapter *adapter, u32 isr)
{
	struct sliccard *card = adapter->card;
	struct slic_upr *upr;

	FUNC7(&adapter->upr_lock.lock, adapter->upr_lock.flags);
	upr = adapter->upr_list;
	if (!upr) {
		FUNC0(0);
		FUNC8(&adapter->upr_lock.lock,
					adapter->upr_lock.flags);
		return;
	}
	adapter->upr_list = upr->next;
	upr->next = NULL;
	adapter->upr_busy = 0;
	FUNC0(adapter->port == upr->adapter);
	switch (upr->upr_request) {
	case SLIC_UPR_STATS:
		{
			struct slic_stats *slicstats =
			    (struct slic_stats *) &adapter->pshmem->inicstats;
			struct slic_stats *newstats = slicstats;
			struct slic_stats  *old = &adapter->inicstats_prev;
			struct slicnet_stats *stst = &adapter->slic_stats;

			if (isr & ISR_UPCERR) {
				FUNC2(&adapter->netdev->dev,
					"SLIC_UPR_STATS command failed isr[%x]\n",
					isr);

				break;
			}
			FUNC1(stst->tcp.xmit_tcp_segs,
					newstats->xmit_tcp_segs_gb,
					old->xmit_tcp_segs_gb);

			FUNC1(stst->tcp.xmit_tcp_bytes,
					newstats->xmit_tcp_bytes_gb,
					old->xmit_tcp_bytes_gb);

			FUNC1(stst->tcp.rcv_tcp_segs,
					newstats->rcv_tcp_segs_gb,
					old->rcv_tcp_segs_gb);

			FUNC1(stst->tcp.rcv_tcp_bytes,
					newstats->rcv_tcp_bytes_gb,
					old->rcv_tcp_bytes_gb);

			FUNC1(stst->iface.xmt_bytes,
					newstats->xmit_bytes_gb,
					old->xmit_bytes_gb);

			FUNC1(stst->iface.xmt_ucast,
					newstats->xmit_unicasts_gb,
					old->xmit_unicasts_gb);

			FUNC1(stst->iface.rcv_bytes,
					newstats->rcv_bytes_gb,
					old->rcv_bytes_gb);

			FUNC1(stst->iface.rcv_ucast,
					newstats->rcv_unicasts_gb,
					old->rcv_unicasts_gb);

			FUNC1(stst->iface.xmt_errors,
					newstats->xmit_collisions_gb,
					old->xmit_collisions_gb);

			FUNC1(stst->iface.xmt_errors,
					newstats->xmit_excess_collisions_gb,
					old->xmit_excess_collisions_gb);

			FUNC1(stst->iface.xmt_errors,
					newstats->xmit_other_error_gb,
					old->xmit_other_error_gb);

			FUNC1(stst->iface.rcv_errors,
					newstats->rcv_other_error_gb,
					old->rcv_other_error_gb);

			FUNC1(stst->iface.rcv_discards,
					newstats->rcv_drops_gb,
					old->rcv_drops_gb);

			if (newstats->rcv_drops_gb > old->rcv_drops_gb) {
				adapter->rcv_drops +=
				    (newstats->rcv_drops_gb -
				     old->rcv_drops_gb);
			}
			FUNC4(old, newstats, sizeof(struct slic_stats));
			break;
		}
	case SLIC_UPR_RLSR:
		FUNC5(adapter, isr);
		break;
	case SLIC_UPR_RCONFIG:
		break;
	case SLIC_UPR_RPHY:
		FUNC0(0);
		break;
	case SLIC_UPR_ENLB:
		FUNC0(0);
		break;
	case SLIC_UPR_ENCT:
		FUNC0(0);
		break;
	case SLIC_UPR_PDWN:
		FUNC0(0);
		break;
	case SLIC_UPR_PING:
		card->pingstatus |= (isr & ISR_PINGDSMASK);
		break;
	default:
		FUNC0(0);
	}
	FUNC3(upr);
	FUNC6(adapter);
	FUNC8(&adapter->upr_lock.lock,
				adapter->upr_lock.flags);
}