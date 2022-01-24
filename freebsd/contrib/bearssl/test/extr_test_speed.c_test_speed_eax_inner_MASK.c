#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ clock_t ;
typedef  int /*<<< orphan*/  br_eax_context ;
struct TYPE_4__ {int /*<<< orphan*/  (* init ) (int /*<<< orphan*/ *,unsigned char*,size_t) ;} ;
typedef  TYPE_1__ br_block_ctrcbc_class ;
struct TYPE_5__ {int /*<<< orphan*/  vtable; } ;
typedef  TYPE_2__ br_aes_gen_ctrcbc_keys ;

/* Variables and functions */
 double CLOCKS_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,unsigned char*,int) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,char,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,...) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 

__attribute__((used)) static void
FUNC12(char *name,
	const br_block_ctrcbc_class *vt, size_t key_len)
{
	unsigned char buf[8192], key[32], nonce[16], aad[16], tag[16];
	int i;
	long num;
	br_aes_gen_ctrcbc_keys ac;
	br_eax_context ec;

	if (vt == NULL) {
		FUNC9("%-30s UNAVAILABLE\n", name);
		FUNC7(stdout);
		return;
	}
	FUNC8(key, 'K', key_len);
	FUNC8(nonce, 'N', sizeof nonce);
	FUNC8(aad, 'A', sizeof aad);
	FUNC8(buf, 'T', sizeof buf);
	for (i = 0; i < 10; i ++) {
		vt->init(&ac.vtable, key, key_len);
		FUNC3(&ec, &ac.vtable);
		FUNC4(&ec, nonce, sizeof nonce);
		FUNC0(&ec, aad, sizeof aad);
		FUNC1(&ec);
		FUNC5(&ec, 1, buf, sizeof buf);
		FUNC2(&ec, tag);
	}
	num = 10;
	for (;;) {
		clock_t begin, end;
		double tt;
		long k;

		begin = FUNC6();
		for (k = num; k > 0; k --) {
			vt->init(&ac.vtable, key, key_len);
			FUNC3(&ec, &ac.vtable);
			FUNC4(&ec, nonce, sizeof nonce);
			FUNC0(&ec, aad, sizeof aad);
			FUNC1(&ec);
			FUNC5(&ec, 1, buf, sizeof buf);
			FUNC2(&ec, tag);
		}
		end = FUNC6();
		tt = (double)(end - begin) / CLOCKS_PER_SEC;
		if (tt >= 2.0) {
			FUNC9("%-30s %8.2f MB/s\n", name,
				((double)sizeof buf) * (double)num
				/ (tt * 1000000.0));
			FUNC7(stdout);
			return;
		}
		num <<= 1;
	}
}