#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_17__ {unsigned char* master_secret; int /*<<< orphan*/  cipher_suite; int /*<<< orphan*/  version; int /*<<< orphan*/  session_id; } ;
typedef  TYPE_2__ br_ssl_session_parameters ;
struct TYPE_18__ {scalar_t__ store_len; int init_done; scalar_t__ store_ptr; scalar_t__ tail; scalar_t__ head; scalar_t__ store; int /*<<< orphan*/  hash; int /*<<< orphan*/  index_key; } ;
typedef  TYPE_3__ br_ssl_session_cache_lru ;
typedef  int /*<<< orphan*/  br_ssl_session_cache_class ;
struct TYPE_16__ {int /*<<< orphan*/  rng; } ;
struct TYPE_19__ {TYPE_1__ eng; } ;
typedef  TYPE_4__ br_ssl_server_context ;

/* Variables and functions */
 scalar_t__ ADDR_NULL ; 
 scalar_t__ CIPHER_SUITE_OFF ; 
 scalar_t__ LRU_ENTRY_LEN ; 
 int MASTER_SECRET_LEN ; 
 scalar_t__ MASTER_SECRET_OFF ; 
 int SESSION_ID_LEN ; 
 scalar_t__ SESSION_ID_OFF ; 
 scalar_t__ VERSION_OFF ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_3__*,unsigned char*,scalar_t__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC13(const br_ssl_session_cache_class **ctx,
	br_ssl_server_context *server_ctx,
	const br_ssl_session_parameters *params)
{
	br_ssl_session_cache_lru *cc;
	unsigned char id[SESSION_ID_LEN];
	uint32_t x, alx;

	cc = (br_ssl_session_cache_lru *)ctx;

	/*
	 * If the buffer is too small, we don't record anything. This
	 * test avoids problems in subsequent code.
	 */
	if (cc->store_len < LRU_ENTRY_LEN) {
		return;
	}

	/*
	 * Upon the first save in a session cache instance, we obtain
	 * a random key for our indexing.
	 */
	if (!cc->init_done) {
		FUNC1(&server_ctx->eng.rng,
			cc->index_key, sizeof cc->index_key);
		cc->hash = FUNC2(&server_ctx->eng.rng);
		cc->init_done = 1;
	}
	FUNC5(cc, params->session_id, id);

	/*
	 * Look for the node in the tree. If the same ID is already used,
	 * then reject it. This is a collision event, which should be
	 * exceedingly rare.
	 * Note: we do NOT record the emplacement here, because the
	 * removal of an entry may change the tree topology.
	 */
	if (FUNC3(cc, id, NULL) != ADDR_NULL) {
		return;
	}

	/*
	 * Find some room for the new parameters. If the cache is not
	 * full yet, add it to the end of the area and bump the pointer up.
	 * Otherwise, evict the list tail entry. Note that we already
	 * filtered out the case of a ridiculously small buffer that
	 * cannot hold any entry at all; thus, if there is no room for an
	 * extra entry, then the cache cannot be empty.
	 */
	if (cc->store_ptr > (cc->store_len - LRU_ENTRY_LEN)) {
		/*
		 * Evict tail. If the buffer has room for a single entry,
		 * then this may also be the head.
		 */
		x = cc->tail;
		cc->tail = FUNC4(cc, x);
		if (cc->tail == ADDR_NULL) {
			cc->head = ADDR_NULL;
		} else {
			FUNC10(cc, cc->tail, ADDR_NULL);
		}

		/*
		 * Remove the node from the tree.
		 */
		FUNC7(cc, x);
	} else {
		/*
		 * Allocate room for new node.
		 */
		x = cc->store_ptr;
		cc->store_ptr += LRU_ENTRY_LEN;
	}

	/*
	 * Find the emplacement for the new node, and link it.
	 */
	FUNC3(cc, id, &alx);
	FUNC9(cc, alx, x);
	FUNC8(cc, x, ADDR_NULL);
	FUNC12(cc, x, ADDR_NULL);

	/*
	 * New entry becomes new list head. It may also become the list
	 * tail if the cache was empty at that point.
	 */
	if (cc->head == ADDR_NULL) {
		cc->tail = x;
	} else {
		FUNC11(cc, cc->head, x);
	}
	FUNC11(cc, x, ADDR_NULL);
	FUNC10(cc, x, cc->head);
	cc->head = x;

	/*
	 * Fill data in the entry.
	 */
	FUNC6(cc->store + x + SESSION_ID_OFF, id, SESSION_ID_LEN);
	FUNC6(cc->store + x + MASTER_SECRET_OFF,
		params->master_secret, MASTER_SECRET_LEN);
	FUNC0(cc->store + x + VERSION_OFF, params->version);
	FUNC0(cc->store + x + CIPHER_SUITE_OFF, params->cipher_suite);
}