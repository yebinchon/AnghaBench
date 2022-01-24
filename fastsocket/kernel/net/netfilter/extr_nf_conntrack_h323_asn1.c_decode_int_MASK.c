#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct field_t {int sz; int attr; unsigned int lb; int /*<<< orphan*/  offset; int /*<<< orphan*/  name; } ;
struct TYPE_9__ {int cur; } ;
typedef  TYPE_1__ bitstr_t ;

/* Variables and functions */
#define  BYTE 131 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
#define  CONS 130 
 int DECODE ; 
 int H323_ERROR_NONE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int TAB_SIZE ; 
#define  UNCO 129 
#define  WORD 128 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 unsigned int FUNC5 (TYPE_1__*) ; 
 unsigned int FUNC6 (TYPE_1__*,unsigned int) ; 

__attribute__((used)) static int FUNC7(bitstr_t *bs, const struct field_t *f,
                      char *base, int level)
{
	unsigned int len;

	FUNC3("%*.s%s", level * TAB_SIZE, " ", f->name);

	switch (f->sz) {
	case BYTE:		/* Range == 256 */
		FUNC0(bs);
		bs->cur++;
		break;
	case WORD:		/* 257 <= Range <= 64K */
		FUNC0(bs);
		bs->cur += 2;
		break;
	case CONS:		/* 64K < Range < 4G */
		len = FUNC4(bs, 2) + 1;
		FUNC0(bs);
		if (base && (f->attr & DECODE)) {	/* timeToLive */
			unsigned int v = FUNC6(bs, len) + f->lb;
			FUNC3(" = %u", v);
			*((unsigned int *)(base + f->offset)) = v;
		}
		bs->cur += len;
		break;
	case UNCO:
		FUNC0(bs);
		FUNC1(bs, 2);
		len = FUNC5(bs);
		bs->cur += len;
		break;
	default:		/* 2 <= Range <= 255 */
		FUNC2(bs, f->sz);
		break;
	}

	FUNC3("\n");

	FUNC1(bs, 0);
	return H323_ERROR_NONE;
}