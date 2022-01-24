#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  br_des_gen_cbcenc_keys ;
struct TYPE_3__ {int /*<<< orphan*/  (* run ) (void*,unsigned char*,unsigned char*,int) ;int /*<<< orphan*/  (* init ) (void*,unsigned char*,int) ;} ;
typedef  TYPE_1__ br_block_cbcenc_class ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC6 (void*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC7 (void*,unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,unsigned char*,int) ; 

__attribute__((used)) static void
FUNC9(const br_block_cbcenc_class *ve)
{
	unsigned char k1[8], k2[8], k3[8];
	unsigned char buf[8];
	unsigned char cipher[8];
	int i, j;
	br_des_gen_cbcenc_keys v_ec;
	void *ec;

	ec = &v_ec;
	FUNC2(k1, "9ec2372c86379df4");
	FUNC2(k2, "ad7ac4464f73805d");
	FUNC2(k3, "20c4f87564527c91");
	FUNC2(buf, "b624d6bd41783ab1");
	FUNC2(cipher, "eafd97b190b167fe");
	for (i = 0; i < 400; i ++) {
		unsigned char key[24];

		FUNC3(key, k1, 8);
		FUNC3(key + 8, k2, 8);
		FUNC3(key + 16, k3, 8);
		ve->init(ec, key, sizeof key);
		for (j = 0; j < 10000; j ++) {
			unsigned char iv[8];

			FUNC4(iv, 0, sizeof iv);
			ve->run(ec, iv, buf, sizeof buf);
			switch (j) {
			case 9997: FUNC8(k3, buf, 8); break;
			case 9998: FUNC8(k2, buf, 8); break;
			case 9999: FUNC8(k1, buf, 8); break;
			}
		}
		FUNC5(".");
		FUNC1(stdout);
	}
	FUNC5(" ");
	FUNC1(stdout);
	FUNC0("MC DES encrypt", buf, cipher, sizeof buf);
}