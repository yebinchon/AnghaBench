#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_36__   TYPE_6__ ;
typedef  struct TYPE_35__   TYPE_5__ ;
typedef  struct TYPE_34__   TYPE_4__ ;
typedef  struct TYPE_33__   TYPE_3__ ;
typedef  struct TYPE_32__   TYPE_2__ ;
typedef  struct TYPE_31__   TYPE_20__ ;
typedef  struct TYPE_30__   TYPE_1__ ;
typedef  struct TYPE_29__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_32__ {char* key_name; int /*<<< orphan*/  flags; int /*<<< orphan*/  dn_len; int /*<<< orphan*/  dn; } ;
typedef  TYPE_2__ test_trust_anchor ;
struct TYPE_33__ {char* name; unsigned int hashes; char** ta_names; char* ee_key_name; unsigned int key_type_usage; unsigned int status; int /*<<< orphan*/  servername; int /*<<< orphan*/  seconds; int /*<<< orphan*/  days; scalar_t__* cert_names; } ;
typedef  TYPE_3__ test_case ;
struct TYPE_35__ {unsigned int key_type; } ;
struct TYPE_30__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct TYPE_34__ {size_t len; struct TYPE_34__* data; TYPE_5__ pkey; int /*<<< orphan*/  flags; TYPE_1__ dn; } ;
typedef  TYPE_4__ br_x509_trust_anchor ;
typedef  TYPE_5__ br_x509_pkey ;
struct TYPE_36__ {int* dp_stack; int* rp_stack; TYPE_11__* vtable; } ;
typedef  TYPE_6__ br_x509_minimal_context ;
typedef  int /*<<< orphan*/  br_hash_class ;
typedef  TYPE_4__ blob ;
struct TYPE_31__ {int id; int /*<<< orphan*/ * impl; } ;
struct TYPE_29__ {unsigned int (* end_chain ) (TYPE_11__**) ;TYPE_5__* (* get_pkey ) (TYPE_11__**,unsigned int*) ;int /*<<< orphan*/  (* end_cert ) (TYPE_11__**) ;int /*<<< orphan*/  (* append ) (TYPE_11__**,TYPE_4__*,size_t) ;int /*<<< orphan*/  (* start_cert ) (TYPE_11__**,size_t) ;int /*<<< orphan*/  (* start_chain ) (TYPE_11__**,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 unsigned int BR_ERR_X509_NOT_TRUSTED ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 void* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  br_sha1_vtable ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int /*<<< orphan*/  const*,TYPE_4__*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__ const*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_20__* hash_impls ; 
 int /*<<< orphan*/  keys ; 
 size_t max_dp_usage ; 
 size_t max_rp_usage ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 TYPE_4__* FUNC14 (scalar_t__,size_t*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC15 (TYPE_11__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_11__**,size_t) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_11__**,TYPE_4__*,size_t) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_11__**) ; 
 unsigned int FUNC19 (TYPE_11__**) ; 
 TYPE_5__* FUNC20 (TYPE_11__**,unsigned int*) ; 
 int /*<<< orphan*/  trust_anchors ; 
 int /*<<< orphan*/  FUNC21 (TYPE_4__*) ; 
 TYPE_4__* FUNC22 (size_t) ; 

__attribute__((used)) static void
FUNC23(test_case *tc)
{
	br_x509_minimal_context ctx;
	br_x509_trust_anchor *anchors;
	size_t num_anchors;
	size_t u;
	const br_hash_class *dnhash;
	size_t num_certs;
	blob *certs;
	br_x509_pkey *ee_pkey_ref;
	const br_x509_pkey *ee_pkey;
	unsigned usages;
	unsigned status;

	FUNC13("%s: ", tc->name);
	FUNC11(stdout);

	/*
	 * Get the hash function to use for hashing DN. We can use just
	 * any supported hash function, but for the elegance of things,
	 * we will use one of the hash function implementations
	 * supported for this test case (with SHA-1 as fallback).
	 */
	dnhash = &br_sha1_vtable;
	for (u = 0; hash_impls[u].id; u ++) {
		if ((tc->hashes & ((unsigned)1 << (hash_impls[u].id))) != 0) {
			dnhash = hash_impls[u].impl;
		}
	}

	/*
	 * Get trust anchors.
	 */
	for (num_anchors = 0; tc->ta_names[num_anchors]; num_anchors ++);
	anchors = FUNC22(num_anchors * sizeof *anchors);
	for (u = 0; tc->ta_names[u]; u ++) {
		test_trust_anchor *tta;
		br_x509_pkey *tak;

		tta = FUNC0(trust_anchors, tc->ta_names[u]);
		if (tta == NULL) {
			FUNC12(stderr, "no such trust anchor: '%s'\n",
				tc->ta_names[u]);
			FUNC10(EXIT_FAILURE);
		}
		tak = FUNC0(keys, tta->key_name);
		if (tak == NULL) {
			FUNC12(stderr, "no such public key: '%s'\n",
				tta->key_name);
			FUNC10(EXIT_FAILURE);
		}
		anchors[u].dn.data = tta->dn;
		anchors[u].dn.len = tta->dn_len;
		anchors[u].flags = tta->flags;
		anchors[u].pkey = *tak;
	}

	/*
	 * Read all relevant certificates.
	 */
	for (num_certs = 0; tc->cert_names[num_certs]; num_certs ++);
	certs = FUNC22(num_certs * sizeof *certs);
	for (u = 0; u < num_certs; u ++) {
		certs[u].data = FUNC14(tc->cert_names[u], &certs[u].len);
	}

	/*
	 * Get expected EE public key (if any).
	 */
	if (tc->ee_key_name == NULL) {
		ee_pkey_ref = NULL;
	} else {
		ee_pkey_ref = FUNC0(keys, tc->ee_key_name);
		if (ee_pkey_ref == NULL) {
			FUNC12(stderr, "no such public key: '%s'\n",
				tc->ee_key_name);
			FUNC10(EXIT_FAILURE);
		}
	}

	/*
	 * Initialise the engine.
	 */
	FUNC4(&ctx, dnhash, anchors, num_anchors);
	for (u = 0; hash_impls[u].id; u ++) {
		int id;

		id = hash_impls[u].id;
		if ((tc->hashes & ((unsigned)1 << id)) != 0) {
			FUNC6(&ctx, id, hash_impls[u].impl);
		}
	}
	FUNC7(&ctx, FUNC3());
	FUNC5(&ctx,
		FUNC1(), FUNC2());

	/*
	 * Set the validation date.
	 */
	FUNC8(&ctx, tc->days, tc->seconds);

	/*
	 * Put "canaries" to detect actual stack usage.
	 */
	for (u = 0; u < (sizeof ctx.dp_stack) / sizeof(uint32_t); u ++) {
		ctx.dp_stack[u] = 0xA7C083FE;
	}
	for (u = 0; u < (sizeof ctx.rp_stack) / sizeof(uint32_t); u ++) {
		ctx.rp_stack[u] = 0xA7C083FE;
	}

	/*
	 * Run the engine. We inject certificates by chunks of 100 bytes
	 * in order to exercise the coroutine API.
	 */
	ctx.vtable->start_chain(&ctx.vtable, tc->servername);
	for (u = 0; u < num_certs; u ++) {
		size_t v;

		ctx.vtable->start_cert(&ctx.vtable, certs[u].len);
		v = 0;
		while (v < certs[u].len) {
			size_t w;

			w = certs[u].len - v;
			if (w > 100) {
				w = 100;
			}
			ctx.vtable->append(&ctx.vtable, certs[u].data + v, w);
			v += w;
		}
		ctx.vtable->end_cert(&ctx.vtable);
	}
	status = ctx.vtable->end_chain(&ctx.vtable);
	ee_pkey = ctx.vtable->get_pkey(&ctx.vtable, &usages);

	/*
	 * Check key type and usage.
	 */
	if (ee_pkey != NULL) {
		unsigned ktu;

		ktu = ee_pkey->key_type | usages;
		if (tc->key_type_usage != (ktu & tc->key_type_usage)) {
			FUNC12(stderr, "wrong key type + usage"
				" (expected 0x%02X, got 0x%02X)\n",
				tc->key_type_usage, ktu);
			FUNC10(EXIT_FAILURE);
		}
	}

	/*
	 * Check results. Note that we may still get a public key if
	 * the path is "not trusted" (but otherwise fine).
	 */
	if (status != tc->status) {
		FUNC12(stderr, "wrong status (got %d, expected %d)\n",
			status, tc->status);
		FUNC10(EXIT_FAILURE);
	}
	if (status == BR_ERR_X509_NOT_TRUSTED) {
		ee_pkey = NULL;
	}
	if (!FUNC9(ee_pkey, ee_pkey_ref)) {
		FUNC12(stderr, "wrong EE public key\n");
		FUNC10(EXIT_FAILURE);
	}

	/*
	 * Check stack usage.
	 */
	for (u = (sizeof ctx.dp_stack) / sizeof(uint32_t); u > 0; u --) {
		if (ctx.dp_stack[u - 1] != 0xA7C083FE) {
			if (max_dp_usage < u) {
				max_dp_usage = u;
			}
			break;
		}
	}
	for (u = (sizeof ctx.rp_stack) / sizeof(uint32_t); u > 0; u --) {
		if (ctx.rp_stack[u - 1] != 0xA7C083FE) {
			if (max_rp_usage < u) {
				max_rp_usage = u;
			}
			break;
		}
	}

	/*
	 * Release everything.
	 */
	for (u = 0; u < num_certs; u ++) {
		FUNC21(certs[u].data);
	}
	FUNC21(certs);
	FUNC21(anchors);
	FUNC13("OK\n");
}