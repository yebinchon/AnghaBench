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
struct TYPE_6__ {int /*<<< orphan*/  (* run ) (TYPE_1__ const**,unsigned char*,unsigned char*,int) ;int /*<<< orphan*/  (* init ) (TYPE_1__ const**,unsigned char*,size_t) ;} ;
typedef  TYPE_1__ br_block_cbcdec_class ;
struct TYPE_7__ {TYPE_1__* vtable; } ;
typedef  TYPE_2__ br_aes_gen_cbcdec_keys ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (unsigned char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__ const**,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__ const**,unsigned char*,unsigned char*,int) ; 

__attribute__((used)) static void
FUNC8(const br_block_cbcdec_class *vd,
	char *skey, char *scipher, char *splain)
{
	unsigned char key[32];
	unsigned char buf[16];
	unsigned char pbuf[16];
	unsigned char plain[16];
	size_t key_len;
	int i, j, k;
	br_aes_gen_cbcdec_keys v_dc;
	const br_block_cbcdec_class **dc;

	dc = &v_dc.vtable;
	key_len = FUNC2(key, skey);
	FUNC2(buf, scipher);
	FUNC2(plain, splain);
	for (i = 0; i < 100; i ++) {
		vd->init(dc, key, key_len);
		for (j = 0; j < 1000; j ++) {
			unsigned char iv[16];

			FUNC3(pbuf, buf, sizeof buf);
			FUNC4(iv, 0, sizeof iv);
			vd->run(dc, iv, buf, sizeof buf);
		}
		switch (key_len) {
		case 16:
			for (k = 0; k < 16; k ++) {
				key[k] ^= buf[k];
			}
			break;
		case 24:
			for (k = 0; k < 8; k ++) {
				key[k] ^= pbuf[8 + k];
			}
			for (k = 0; k < 16; k ++) {
				key[8 + k] ^= buf[k];
			}
			break;
		default:
			for (k = 0; k < 16; k ++) {
				key[k] ^= pbuf[k];
				key[16 + k] ^= buf[k];
			}
			break;
		}
		FUNC5(".");
		FUNC1(stdout);
	}
	FUNC5(" ");
	FUNC1(stdout);
	FUNC0("MC AES decrypt", buf, plain, sizeof buf);
}