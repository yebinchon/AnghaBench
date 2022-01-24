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
typedef  int /*<<< orphan*/  br_des_gen_cbcdec_keys ;
struct TYPE_3__ {int /*<<< orphan*/  (* run ) (void*,unsigned char*,unsigned char*,int) ;int /*<<< orphan*/  (* init ) (void*,unsigned char*,int) ;} ;
typedef  TYPE_1__ br_block_cbcdec_class ;

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
FUNC9(const br_block_cbcdec_class *vd)
{
	unsigned char k1[8], k2[8], k3[8];
	unsigned char buf[8];
	unsigned char plain[8];
	int i, j;
	br_des_gen_cbcdec_keys v_dc;
	void *dc;

	dc = &v_dc;
	FUNC2(k1, "79b63486e0ce37e0");
	FUNC2(k2, "08e65231abae3710");
	FUNC2(k3, "1f5eb69e925ef185");
	FUNC2(buf, "2783aa729432fe96");
	FUNC2(plain, "44937ca532cdbf98");
	for (i = 0; i < 400; i ++) {
		unsigned char key[24];

		FUNC3(key, k1, 8);
		FUNC3(key + 8, k2, 8);
		FUNC3(key + 16, k3, 8);
		vd->init(dc, key, sizeof key);
		for (j = 0; j < 10000; j ++) {
			unsigned char iv[8];

			FUNC4(iv, 0, sizeof iv);
			vd->run(dc, iv, buf, sizeof buf);
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
	FUNC0("MC DES decrypt", buf, plain, sizeof buf);
}