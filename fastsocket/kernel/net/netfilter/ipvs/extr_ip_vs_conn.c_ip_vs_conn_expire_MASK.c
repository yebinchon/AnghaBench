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
struct ip_vs_conn {int timeout; int flags; int /*<<< orphan*/  n_control; int /*<<< orphan*/  refcnt; int /*<<< orphan*/ * app; int /*<<< orphan*/  pe_data; int /*<<< orphan*/  pe; scalar_t__ control; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int HZ ; 
 int IP_VS_CONN_F_NO_CPORT ; 
 int IP_VS_CONN_F_ONE_PACKET ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int,int) ; 
 int IP_VS_STATE_MASTER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ip_vs_conn_cachep ; 
 int /*<<< orphan*/  ip_vs_conn_count ; 
 int /*<<< orphan*/  FUNC5 (struct ip_vs_conn*) ; 
 int /*<<< orphan*/  ip_vs_conn_no_cport_cnt ; 
 int /*<<< orphan*/  FUNC6 (struct ip_vs_conn*) ; 
 int /*<<< orphan*/  FUNC7 (struct ip_vs_conn*) ; 
 int /*<<< orphan*/  FUNC8 (struct ip_vs_conn*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ip_vs_conn*,int /*<<< orphan*/ ) ; 
 int ip_vs_sync_state ; 
 int /*<<< orphan*/  FUNC11 (struct ip_vs_conn*) ; 
 int /*<<< orphan*/  FUNC12 (struct ip_vs_conn*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct ip_vs_conn*) ; 
 scalar_t__ FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC19(unsigned long data)
{
	struct ip_vs_conn *cp = (struct ip_vs_conn *)data;

	cp->timeout = 60*HZ;

	/*
	 *	hey, I'm using it
	 */
	FUNC2(&cp->refcnt);

	/*
	 *	do I control anybody?
	 */
	if (FUNC3(&cp->n_control))
		goto expire_later;

	/*
	 *	unhash it if it is hashed in the conn table
	 */
	if (!FUNC7(cp) && !(cp->flags & IP_VS_CONN_F_ONE_PACKET))
		goto expire_later;

	/*
	 *	refcnt==1 implies I'm the only one referrer
	 */
	if (FUNC15(FUNC3(&cp->refcnt) == 1)) {
		/* delete the timer if it is activated by other users */
		if (FUNC17(&cp->timer))
			FUNC4(&cp->timer);

		/* does anybody control me? */
		if (cp->control)
			FUNC8(cp);

/* RedHat: Future backport of nfct will need this:
		if (cp->flags & IP_VS_CONN_F_NFCT)
			ip_vs_conn_drop_conntrack(cp); */

		FUNC9(cp->pe);
		FUNC13(cp->pe_data);
		if (FUNC18(cp->app != NULL))
			FUNC11(cp);
		FUNC12(cp);
		if (cp->flags & IP_VS_CONN_F_NO_CPORT)
			FUNC1(&ip_vs_conn_no_cport_cnt);
		FUNC1(&ip_vs_conn_count);

		FUNC14(ip_vs_conn_cachep, cp);
		return;
	}

	/* hash it back to the table */
	FUNC5(cp);

  expire_later:
	FUNC0(7, "delayed: conn->refcnt-1=%d conn->n_control=%d\n",
		  FUNC3(&cp->refcnt)-1,
		  FUNC3(&cp->n_control));

	if (ip_vs_sync_state & IP_VS_STATE_MASTER)
		FUNC10(cp, FUNC16());

	FUNC6(cp);
}