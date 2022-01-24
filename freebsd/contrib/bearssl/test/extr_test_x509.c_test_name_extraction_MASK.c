#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_9__ ;
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_18__ {int* dp_stack; int* rp_stack; TYPE_3__* vtable; } ;
typedef  TYPE_1__ br_x509_minimal_context ;
struct TYPE_19__ {unsigned char* oid; scalar_t__* buf; int len; scalar_t__ status; } ;
typedef  TYPE_2__ br_name_element ;
struct TYPE_22__ {int id; int /*<<< orphan*/  impl; } ;
struct TYPE_21__ {int num; scalar_t__ status; int /*<<< orphan*/ * expected; } ;
struct TYPE_20__ {unsigned int (* end_chain ) (TYPE_3__**) ;int /*<<< orphan*/  (* end_cert ) (TYPE_3__**) ;int /*<<< orphan*/  (* append ) (TYPE_3__**,unsigned char*,size_t) ;int /*<<< orphan*/  (* start_cert ) (TYPE_3__**,size_t) ;int /*<<< orphan*/  (* start_chain ) (TYPE_3__**,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 unsigned int BR_ERR_X509_NOT_TRUSTED ; 
 int /*<<< orphan*/  DEFAULT_TIME ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  br_sha256_vtable ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,size_t) ; 
 TYPE_9__* hash_impls ; 
 size_t max_dp_usage ; 
 size_t max_rp_usage ; 
 TYPE_8__* names_ref ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 unsigned char* FUNC14 (char*,size_t*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC15 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__**,size_t) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__**,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__**) ; 
 unsigned int FUNC21 (TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC22 (unsigned char*) ; 
 void* FUNC23 (int) ; 

__attribute__((used)) static void
FUNC24(void)
{
	unsigned char *data;
	size_t len;
	br_x509_minimal_context ctx;
	uint32_t days, seconds;
	size_t u;
	unsigned status;
	br_name_element *names;
	size_t num_names;
	int good;

	FUNC13("Name extraction: ");
	FUNC10(stdout);
	data = FUNC14("names.crt", &len);
	FUNC3(&ctx, &br_sha256_vtable, NULL, 0);
	for (u = 0; hash_impls[u].id; u ++) {
		int id;

		id = hash_impls[u].id;
		FUNC5(&ctx, id, hash_impls[u].impl);
	}
	FUNC7(&ctx, FUNC2());
	FUNC4(&ctx,
		FUNC0(), FUNC1());
	FUNC16(DEFAULT_TIME, &days, &seconds);
	FUNC8(&ctx, days, seconds);

	num_names = (sizeof names_ref) / (sizeof names_ref[0]);
	names = FUNC23(num_names * sizeof *names);
	for (u = 0; u < num_names; u ++) {
		int num;
		unsigned char *oid;

		num = names_ref[u].num;
		if (num > 0) {
			oid = FUNC23(5);
			oid[0] = 4;
			oid[1] = 0x29;
			oid[2] = 0x01;
			oid[3] = 0x01;
			oid[4] = num;
		} else if (num == 0) {
			oid = FUNC23(13);
			oid[0] = 0x00;
			oid[1] = 0x00;
			oid[2] = 0x0A;
			oid[3] = 0x2B;
			oid[4] = 0x06;
			oid[5] = 0x01;
			oid[6] = 0x04;
			oid[7] = 0x01;
			oid[8] = 0x82;
			oid[9] = 0x37;
			oid[10] = 0x14;
			oid[11] = 0x02;
			oid[12] = 0x03;
		} else {
			oid = FUNC23(2);
			oid[0] = 0x00;
			oid[1] = -num;
		}
		names[u].oid = oid;
		names[u].buf = FUNC23(256);
		names[u].len = 256;
	}
	FUNC6(&ctx, names, num_names);

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
	 * Run the engine. Since we set no trust anchor, we expect a status
	 * of "not trusted".
	 */
	ctx.vtable->start_chain(&ctx.vtable, NULL);
	ctx.vtable->start_cert(&ctx.vtable, len);
	ctx.vtable->append(&ctx.vtable, data, len);
	ctx.vtable->end_cert(&ctx.vtable);
	status = ctx.vtable->end_chain(&ctx.vtable);
	if (status != BR_ERR_X509_NOT_TRUSTED) {
		FUNC11(stderr, "wrong status: %u\n", status);
		FUNC9(EXIT_FAILURE);
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

	good = 1;
	for (u = 0; u < num_names; u ++) {
		if (names[u].status != names_ref[u].status) {
			FUNC13("ERR: name %u (id=%d): status=%d, expected=%d\n",
				(unsigned)u, names_ref[u].num,
				names[u].status, names_ref[u].status);
			if (names[u].status > 0) {
				unsigned char *p;

				FUNC13("  obtained:");
				p = (unsigned char *)names[u].buf;
				while (*p) {
					FUNC13(" %02X", *p ++);
				}
				FUNC13("\n");
			}
			good = 0;
			continue;
		}
		if (names_ref[u].expected == NULL) {
			if (names[u].buf[0] != 0) {
				FUNC13("ERR: name %u not zero-terminated\n",
					(unsigned)u);
				good = 0;
				continue;
			}
		} else {
			if (FUNC15(names[u].buf, names_ref[u].expected) != 0) {
				unsigned char *p;

				FUNC13("ERR: name %u (id=%d): wrong value\n",
					(unsigned)u, names_ref[u].num);
				FUNC13("  expected:");
				p = (unsigned char *)names_ref[u].expected;
				while (*p) {
					FUNC13(" %02X", *p ++);
				}
				FUNC13("\n");
				FUNC13("  obtained:");
				p = (unsigned char *)names[u].buf;
				while (*p) {
					FUNC13(" %02X", *p ++);
				}
				FUNC13("\n");
				good = 0;
				continue;
			}
		}
	}
	if (!good) {
		FUNC9(EXIT_FAILURE);
	}

	/*
	for (u = 0; u < num_names; u ++) {
		printf("%u: (%d)", (unsigned)u, names[u].status);
		if (names[u].status > 0) {
			size_t v;

			for (v = 0; names[u].buf[v]; v ++) {
				printf(" %02x", names[u].buf[v]);
			}
		}
		printf("\n");
	}
	*/

	FUNC22(data);
	FUNC12(names, num_names);
	FUNC13("OK\n");
}