
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* z_streamp ;
struct TYPE_7__ {scalar_t__ noheader; int last_flush; int status; int pending_buf; int pending_out; scalar_t__ pending; } ;
typedef TYPE_2__ deflate_state ;
struct TYPE_6__ {int adler; int * state; int data_type; int * msg; scalar_t__ total_out; scalar_t__ total_in; } ;


 int BUSY_STATE ;
 int INIT_STATE ;
 int Z_NO_FLUSH ;
 int Z_OK ;
 int Z_STREAM_ERROR ;
 int Z_UNKNOWN ;
 int lm_init (TYPE_2__*) ;
 int zlib_tr_init (TYPE_2__*) ;

int zlib_deflateReset(
 z_streamp strm
)
{
    deflate_state *s;

    if (strm == ((void*)0) || strm->state == ((void*)0))
        return Z_STREAM_ERROR;

    strm->total_in = strm->total_out = 0;
    strm->msg = ((void*)0);
    strm->data_type = Z_UNKNOWN;

    s = (deflate_state *)strm->state;
    s->pending = 0;
    s->pending_out = s->pending_buf;

    if (s->noheader < 0) {
        s->noheader = 0;
    }
    s->status = s->noheader ? BUSY_STATE : INIT_STATE;
    strm->adler = 1;
    s->last_flush = Z_NO_FLUSH;

    zlib_tr_init(s);
    lm_init(s);

    return Z_OK;
}
