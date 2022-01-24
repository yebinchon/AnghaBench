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
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_3__ {size_t dptr; size_t rate; unsigned char* dbuf; int /*<<< orphan*/ * A; } ;
typedef  TYPE_1__ br_shake_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(br_shake_context *sc, void *out, size_t len)
{
	unsigned char *buf;
	size_t dptr, rate;

	buf = out;
	dptr = sc->dptr;
	rate = sc->rate;
	while (len > 0) {
		size_t clen;

		if (dptr == rate) {
			unsigned char *dbuf;
			uint64_t *A;

			A = sc->A;
			dbuf = sc->dbuf;
			FUNC2(A);
			FUNC0(dbuf +   0,  A[ 0]);
			FUNC0(dbuf +   8, ~A[ 1]);
			FUNC0(dbuf +  16, ~A[ 2]);
			FUNC0(dbuf +  24,  A[ 3]);
			FUNC0(dbuf +  32,  A[ 4]);
			FUNC0(dbuf +  40,  A[ 5]);
			FUNC0(dbuf +  48,  A[ 6]);
			FUNC0(dbuf +  56,  A[ 7]);
			FUNC0(dbuf +  64, ~A[ 8]);
			FUNC0(dbuf +  72,  A[ 9]);
			FUNC0(dbuf +  80,  A[10]);
			FUNC0(dbuf +  88,  A[11]);
			FUNC0(dbuf +  96, ~A[12]);
			FUNC0(dbuf + 104,  A[13]);
			FUNC0(dbuf + 112,  A[14]);
			FUNC0(dbuf + 120,  A[15]);
			FUNC0(dbuf + 128,  A[16]);
			FUNC0(dbuf + 136, ~A[17]);
			FUNC0(dbuf + 144,  A[18]);
			FUNC0(dbuf + 152,  A[19]);
			FUNC0(dbuf + 160, ~A[20]);
			FUNC0(dbuf + 168,  A[21]);
			FUNC0(dbuf + 176,  A[22]);
			FUNC0(dbuf + 184,  A[23]);
			FUNC0(dbuf + 192,  A[24]);
			dptr = 0;
		}
		clen = rate - dptr;
		if (clen > len) {
			clen = len;
		}
		FUNC1(buf, sc->dbuf + dptr, clen);
		dptr += clen;
		buf += clen;
		len -= clen;
	}
	sc->dptr = dptr;
}