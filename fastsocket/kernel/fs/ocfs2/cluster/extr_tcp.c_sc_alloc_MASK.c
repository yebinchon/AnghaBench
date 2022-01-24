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
struct page {int dummy; } ;
struct o2nm_node {int dummy; } ;
struct TYPE_2__ {unsigned long data; int /*<<< orphan*/  function; } ;
struct o2net_sock_container {struct page* sc_page; TYPE_1__ sc_idle_timeout; int /*<<< orphan*/  sc_keepalive_work; int /*<<< orphan*/  sc_shutdown_work; int /*<<< orphan*/  sc_rx_work; int /*<<< orphan*/  sc_connect_work; struct o2nm_node* sc_node; int /*<<< orphan*/  sc_kref; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 struct page* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct o2net_sock_container*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct o2net_sock_container* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct o2net_sock_container*) ; 
 int /*<<< orphan*/  o2net_idle_timer ; 
 int /*<<< orphan*/  o2net_rx_until_empty ; 
 int /*<<< orphan*/  o2net_sc_connect_completed ; 
 int /*<<< orphan*/  o2net_sc_send_keep_req ; 
 int /*<<< orphan*/  o2net_shutdown_sc ; 
 int /*<<< orphan*/  FUNC9 (struct o2nm_node*) ; 
 int /*<<< orphan*/  FUNC10 (struct o2net_sock_container*,char*) ; 

__attribute__((used)) static struct o2net_sock_container *FUNC11(struct o2nm_node *node)
{
	struct o2net_sock_container *sc, *ret = NULL;
	struct page *page = NULL;

	page = FUNC3(GFP_NOFS);
	sc = FUNC7(sizeof(*sc), GFP_NOFS);
	if (sc == NULL || page == NULL)
		goto out;

	FUNC6(&sc->sc_kref);
	FUNC9(node);
	sc->sc_node = node;

	FUNC1(&sc->sc_connect_work, o2net_sc_connect_completed);
	FUNC1(&sc->sc_rx_work, o2net_rx_until_empty);
	FUNC1(&sc->sc_shutdown_work, o2net_shutdown_sc);
	FUNC0(&sc->sc_keepalive_work, o2net_sc_send_keep_req);

	FUNC4(&sc->sc_idle_timeout);
	sc->sc_idle_timeout.function = o2net_idle_timer;
	sc->sc_idle_timeout.data = (unsigned long)sc;

	FUNC10(sc, "alloced\n");

	ret = sc;
	sc->sc_page = page;
	FUNC8(sc);
	sc = NULL;
	page = NULL;

out:
	if (page)
		FUNC2(page);
	FUNC5(sc);

	return ret;
}