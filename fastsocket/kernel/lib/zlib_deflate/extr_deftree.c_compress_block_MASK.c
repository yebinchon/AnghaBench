#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {unsigned int last_lit; unsigned int* d_buf; int* l_buf; scalar_t__ pending; scalar_t__ lit_bufsize; int /*<<< orphan*/  last_eob_len; } ;
typedef  TYPE_1__ deflate_state ;
struct TYPE_10__ {int /*<<< orphan*/  Len; } ;
typedef  TYPE_2__ ct_data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 unsigned int D_CODES ; 
 size_t END_BLOCK ; 
 unsigned int LITERALS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__* base_dist ; 
 scalar_t__* base_length ; 
 unsigned int FUNC2 (unsigned int) ; 
 int* extra_dbits ; 
 int* extra_lbits ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 unsigned int* length_code ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,size_t,TYPE_2__*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC6(
	deflate_state *s,
	ct_data *ltree, /* literal tree */
	ct_data *dtree  /* distance tree */
)
{
    unsigned dist;      /* distance of matched string */
    int lc;             /* match length or unmatched char (if dist == 0) */
    unsigned lx = 0;    /* running index in l_buf */
    unsigned code;      /* the code to send */
    int extra;          /* number of extra bits to send */

    if (s->last_lit != 0) do {
        dist = s->d_buf[lx];
        lc = s->l_buf[lx++];
        if (dist == 0) {
            FUNC5(s, lc, ltree); /* send a literal byte */
            FUNC1(FUNC3(lc), (stderr," '%c' ", lc));
        } else {
            /* Here, lc is the match length - MIN_MATCH */
            code = length_code[lc];
            FUNC5(s, code+LITERALS+1, ltree); /* send the length code */
            extra = extra_lbits[code];
            if (extra != 0) {
                lc -= base_length[code];
                FUNC4(s, lc, extra);       /* send the extra length bits */
            }
            dist--; /* dist is now the match distance - 1 */
            code = FUNC2(dist);
            FUNC0 (code < D_CODES, "bad d_code");

            FUNC5(s, code, dtree);       /* send the distance code */
            extra = extra_dbits[code];
            if (extra != 0) {
                dist -= base_dist[code];
                FUNC4(s, dist, extra);   /* send the extra distance bits */
            }
        } /* literal or match pair ? */

        /* Check that the overlay between pending_buf and d_buf+l_buf is ok: */
        FUNC0(s->pending < s->lit_bufsize + 2*lx, "pendingBuf overflow");

    } while (lx < s->last_lit);

    FUNC5(s, END_BLOCK, ltree);
    s->last_eob_len = ltree[END_BLOCK].Len;
}