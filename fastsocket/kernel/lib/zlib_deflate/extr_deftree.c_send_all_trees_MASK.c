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
struct TYPE_7__ {int /*<<< orphan*/  bits_sent; scalar_t__ dyn_dtree; scalar_t__ dyn_ltree; TYPE_1__* bl_tree; } ;
typedef  TYPE_2__ deflate_state ;
typedef  int /*<<< orphan*/  ct_data ;
struct TYPE_6__ {int Len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int BL_CODES ; 
 int D_CODES ; 
 int L_CODES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t* bl_order ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC4(
	deflate_state *s,
	int lcodes,  /* number of codes for each tree */
	int dcodes,  /* number of codes for each tree */
	int blcodes  /* number of codes for each tree */
)
{
    int rank;                    /* index in bl_order */

    FUNC0 (lcodes >= 257 && dcodes >= 1 && blcodes >= 4, "not enough codes");
    FUNC0 (lcodes <= L_CODES && dcodes <= D_CODES && blcodes <= BL_CODES,
            "too many codes");
    FUNC1((stderr, "\nbl counts: "));
    FUNC2(s, lcodes-257, 5); /* not +255 as stated in appnote.txt */
    FUNC2(s, dcodes-1,   5);
    FUNC2(s, blcodes-4,  4); /* not -3 as stated in appnote.txt */
    for (rank = 0; rank < blcodes; rank++) {
        FUNC1((stderr, "\nbl code %2d ", bl_order[rank]));
        FUNC2(s, s->bl_tree[bl_order[rank]].Len, 3);
    }
    FUNC1((stderr, "\nbl tree: sent %ld", s->bits_sent));

    FUNC3(s, (ct_data *)s->dyn_ltree, lcodes-1); /* literal tree */
    FUNC1((stderr, "\nlit tree: sent %ld", s->bits_sent));

    FUNC3(s, (ct_data *)s->dyn_dtree, dcodes-1); /* distance tree */
    FUNC1((stderr, "\ndist tree: sent %ld", s->bits_sent));
}