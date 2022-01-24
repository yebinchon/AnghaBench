#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct lsap_cb {scalar_t__ slsap_sel; scalar_t__ dlsap_sel; } ;
struct TYPE_6__ {scalar_t__ slsap_sel; scalar_t__ dlsap_sel; struct lsap_cb* lsap; scalar_t__ valid; } ;
struct lap_cb {TYPE_1__ cache; } ;
struct TYPE_7__ {int /*<<< orphan*/  hb_spinlock; } ;
typedef  TYPE_2__ hashbin_t ;
typedef  scalar_t__ __u8 ;

/* Variables and functions */
 int CONNECT_CMD ; 
 scalar_t__ LSAP_ANY ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct lap_cb*,struct lsap_cb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct lsap_cb *FUNC5(struct lap_cb *self, __u8 dlsap_sel,
				       __u8 slsap_sel, int status,
				       hashbin_t *queue)
{
	struct lsap_cb *lsap;
	unsigned long flags;

	/*
	 *  Optimize for the common case. We assume that the last frame
	 *  received is in the same connection as the last one, so check in
	 *  cache first to avoid the linear search
	 */
#ifdef CONFIG_IRDA_CACHE_LAST_LSAP
	if ((self->cache.valid) &&
	    (self->cache.slsap_sel == slsap_sel) &&
	    (self->cache.dlsap_sel == dlsap_sel))
	{
		return (self->cache.lsap);
	}
#endif

	FUNC3(&queue->hb_spinlock, flags);

	lsap = (struct lsap_cb *) FUNC0(queue);
	while (lsap != NULL) {
		/*
		 *  If this is an incoming connection, then the destination
		 *  LSAP selector may have been specified as LM_ANY so that
		 *  any client can connect. In that case we only need to check
		 *  if the source LSAP (in our view!) match!
		 */
		if ((status == CONNECT_CMD) &&
		    (lsap->slsap_sel == slsap_sel) &&
		    (lsap->dlsap_sel == LSAP_ANY)) {
			/* This is where the dest lsap sel is set on incoming
			 * lsaps */
			lsap->dlsap_sel = dlsap_sel;
			break;
		}
		/*
		 *  Check if source LSAP and dest LSAP selectors match.
		 */
		if ((lsap->slsap_sel == slsap_sel) &&
		    (lsap->dlsap_sel == dlsap_sel))
			break;

		lsap = (struct lsap_cb *) FUNC1(queue);
	}
#ifdef CONFIG_IRDA_CACHE_LAST_LSAP
	if(lsap)
		irlmp_update_cache(self, lsap);
#endif
	FUNC4(&queue->hb_spinlock, flags);

	/* Return what we've found or NULL */
	return lsap;
}