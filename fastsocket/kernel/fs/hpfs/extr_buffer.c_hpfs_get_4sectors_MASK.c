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
struct super_block {int dummy; } ;
struct quad_buffer_head {void* data; TYPE_1__** bh; } ;
struct TYPE_3__ {int /*<<< orphan*/  b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,unsigned int,TYPE_1__**) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

void *FUNC6(struct super_block *s, unsigned secno,
                          struct quad_buffer_head *qbh)
{
	FUNC1();

	if (secno & 3) {
		FUNC5("HPFS: hpfs_get_4sectors: unaligned read\n");
		return NULL;
	}

	/*return hpfs_map_4sectors(s, secno, qbh, 0);*/
	if (!(qbh->data = FUNC3(2048, GFP_NOFS))) {
		FUNC5("HPFS: hpfs_get_4sectors: out of memory\n");
		return NULL;
	}
	if (!(FUNC2(s, secno, &qbh->bh[0]))) goto bail0;
	if (!(FUNC2(s, secno + 1, &qbh->bh[1]))) goto bail1;
	if (!(FUNC2(s, secno + 2, &qbh->bh[2]))) goto bail2;
	if (!(FUNC2(s, secno + 3, &qbh->bh[3]))) goto bail3;
	FUNC4(qbh->data, qbh->bh[0]->b_data, 512);
	FUNC4(qbh->data + 512, qbh->bh[1]->b_data, 512);
	FUNC4(qbh->data + 2*512, qbh->bh[2]->b_data, 512);
	FUNC4(qbh->data + 3*512, qbh->bh[3]->b_data, 512);
	return qbh->data;

	bail3:	FUNC0(qbh->bh[2]);
	bail2:	FUNC0(qbh->bh[1]);
	bail1:	FUNC0(qbh->bh[0]);
	bail0:
	return NULL;
}