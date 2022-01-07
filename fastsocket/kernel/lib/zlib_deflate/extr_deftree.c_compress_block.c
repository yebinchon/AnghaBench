
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {unsigned int last_lit; unsigned int* d_buf; int* l_buf; scalar_t__ pending; scalar_t__ lit_bufsize; int last_eob_len; } ;
typedef TYPE_1__ deflate_state ;
struct TYPE_10__ {int Len; } ;
typedef TYPE_2__ ct_data ;


 int Assert (int,char*) ;
 unsigned int D_CODES ;
 size_t END_BLOCK ;
 unsigned int LITERALS ;
 int Tracecv (int ,int ) ;
 scalar_t__* base_dist ;
 scalar_t__* base_length ;
 unsigned int d_code (unsigned int) ;
 int* extra_dbits ;
 int* extra_lbits ;
 int isgraph (int) ;
 unsigned int* length_code ;
 int send_bits (TYPE_1__*,unsigned int,int) ;
 int send_code (TYPE_1__*,size_t,TYPE_2__*) ;
 int stderr ;

__attribute__((used)) static void compress_block(
 deflate_state *s,
 ct_data *ltree,
 ct_data *dtree
)
{
    unsigned dist;
    int lc;
    unsigned lx = 0;
    unsigned code;
    int extra;

    if (s->last_lit != 0) do {
        dist = s->d_buf[lx];
        lc = s->l_buf[lx++];
        if (dist == 0) {
            send_code(s, lc, ltree);
            Tracecv(isgraph(lc), (stderr," '%c' ", lc));
        } else {

            code = length_code[lc];
            send_code(s, code+LITERALS+1, ltree);
            extra = extra_lbits[code];
            if (extra != 0) {
                lc -= base_length[code];
                send_bits(s, lc, extra);
            }
            dist--;
            code = d_code(dist);
            Assert (code < D_CODES, "bad d_code");

            send_code(s, code, dtree);
            extra = extra_dbits[code];
            if (extra != 0) {
                dist -= base_dist[code];
                send_bits(s, dist, extra);
            }
        }


        Assert(s->pending < s->lit_bufsize + 2*lx, "pendingBuf overflow");

    } while (lx < s->last_lit);

    send_code(s, END_BLOCK, ltree);
    s->last_eob_len = ltree[END_BLOCK].Len;
}
