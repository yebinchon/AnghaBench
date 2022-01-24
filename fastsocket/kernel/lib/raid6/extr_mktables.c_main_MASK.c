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
typedef  int uint8_t ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

int FUNC3(int argc, char *argv[])
{
	int i, j, k;
	uint8_t v;
	uint8_t exptbl[256], invtbl[256];

	FUNC2("#include <linux/raid/pq.h>\n");

	/* Compute multiplication table */
	FUNC2("\nconst u8  __attribute__((aligned(256)))\n"
		"raid6_gfmul[256][256] =\n"
		"{\n");
	for (i = 0; i < 256; i++) {
		FUNC2("\t{\n");
		for (j = 0; j < 256; j += 8) {
			FUNC2("\t\t");
			for (k = 0; k < 8; k++)
				FUNC2("0x%02x,%c", FUNC0(i, j + k),
				       (k == 7) ? '\n' : ' ');
		}
		FUNC2("\t},\n");
	}
	FUNC2("};\n");
	FUNC2("#ifdef __KERNEL__\n");
	FUNC2("EXPORT_SYMBOL(raid6_gfmul);\n");
	FUNC2("#endif\n");

	/* Compute vector multiplication table */
	FUNC2("\nconst u8  __attribute__((aligned(256)))\n"
		"raid6_vgfmul[256][32] =\n"
		"{\n");
	for (i = 0; i < 256; i++) {
		FUNC2("\t{\n");
		for (j = 0; j < 16; j += 8) {
			FUNC2("\t\t");
			for (k = 0; k < 8; k++)
				FUNC2("0x%02x,%c", FUNC0(i, j + k),
				       (k == 7) ? '\n' : ' ');
		}
		for (j = 0; j < 16; j += 8) {
			FUNC2("\t\t");
			for (k = 0; k < 8; k++)
				FUNC2("0x%02x,%c", FUNC0(i, (j + k) << 4),
				       (k == 7) ? '\n' : ' ');
		}
		FUNC2("\t},\n");
	}
	FUNC2("};\n");
	FUNC2("#ifdef __KERNEL__\n");
	FUNC2("EXPORT_SYMBOL(raid6_vgfmul);\n");
	FUNC2("#endif\n");

	/* Compute power-of-2 table (exponent) */
	v = 1;
	FUNC2("\nconst u8 __attribute__((aligned(256)))\n"
	       "raid6_gfexp[256] =\n" "{\n");
	for (i = 0; i < 256; i += 8) {
		FUNC2("\t");
		for (j = 0; j < 8; j++) {
			exptbl[i + j] = v;
			FUNC2("0x%02x,%c", v, (j == 7) ? '\n' : ' ');
			v = FUNC0(v, 2);
			if (v == 1)
				v = 0;	/* For entry 255, not a real entry */
		}
	}
	FUNC2("};\n");
	FUNC2("#ifdef __KERNEL__\n");
	FUNC2("EXPORT_SYMBOL(raid6_gfexp);\n");
	FUNC2("#endif\n");

	/* Compute inverse table x^-1 == x^254 */
	FUNC2("\nconst u8 __attribute__((aligned(256)))\n"
	       "raid6_gfinv[256] =\n" "{\n");
	for (i = 0; i < 256; i += 8) {
		FUNC2("\t");
		for (j = 0; j < 8; j++) {
			invtbl[i + j] = v = FUNC1(i + j, 254);
			FUNC2("0x%02x,%c", v, (j == 7) ? '\n' : ' ');
		}
	}
	FUNC2("};\n");
	FUNC2("#ifdef __KERNEL__\n");
	FUNC2("EXPORT_SYMBOL(raid6_gfinv);\n");
	FUNC2("#endif\n");

	/* Compute inv(2^x + 1) (exponent-xor-inverse) table */
	FUNC2("\nconst u8 __attribute__((aligned(256)))\n"
	       "raid6_gfexi[256] =\n" "{\n");
	for (i = 0; i < 256; i += 8) {
		FUNC2("\t");
		for (j = 0; j < 8; j++)
			FUNC2("0x%02x,%c", invtbl[exptbl[i + j] ^ 1],
			       (j == 7) ? '\n' : ' ');
	}
	FUNC2("};\n");
	FUNC2("#ifdef __KERNEL__\n");
	FUNC2("EXPORT_SYMBOL(raid6_gfexi);\n");
	FUNC2("#endif\n");

	return 0;
}