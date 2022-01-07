
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef TYPE_1__* z_streamp ;
typedef int uInt ;
struct TYPE_14__ {scalar_t__ status; int last_flush; int w_bits; int level; scalar_t__ strstart; scalar_t__ pending; scalar_t__ lookahead; int noheader; TYPE_1__* strm; } ;
typedef TYPE_2__ deflate_state ;
typedef scalar_t__ block_state ;
struct TYPE_13__ {scalar_t__ avail_in; scalar_t__ avail_out; int adler; int * next_in; int * state; } ;
struct TYPE_12__ {scalar_t__ (* func ) (TYPE_2__*,int) ;} ;


 int Assert (int,char*) ;
 scalar_t__ BUSY_STATE ;
 int CLEAR_HASH (TYPE_2__*) ;
 scalar_t__ FINISH_STATE ;
 scalar_t__ INIT_STATE ;
 int PRESET_DICT ;
 int Z_BUF_ERROR ;
 int Z_DEFLATED ;
 int Z_FINISH ;
 int Z_FULL_FLUSH ;
 int Z_NO_FLUSH ;
 int Z_OK ;
 int Z_PACKET_FLUSH ;
 int Z_PARTIAL_FLUSH ;
 int Z_STREAM_END ;
 int Z_STREAM_ERROR ;
 scalar_t__ block_done ;
 TYPE_10__* configuration_table ;
 scalar_t__ finish_done ;
 scalar_t__ finish_started ;
 int flush_pending (TYPE_1__*) ;
 scalar_t__ need_more ;
 int putShortMSB (TYPE_2__*,int) ;
 scalar_t__ stub1 (TYPE_2__*,int) ;
 int zlib_tr_align (TYPE_2__*) ;
 int zlib_tr_stored_block (TYPE_2__*,char*,long,int ) ;
 int zlib_tr_stored_type_only (TYPE_2__*) ;

int zlib_deflate(
 z_streamp strm,
 int flush
)
{
    int old_flush;
    deflate_state *s;

    if (strm == ((void*)0) || strm->state == ((void*)0) ||
 flush > Z_FINISH || flush < 0) {
        return Z_STREAM_ERROR;
    }
    s = (deflate_state *) strm->state;

    if ((strm->next_in == ((void*)0) && strm->avail_in != 0) ||
 (s->status == FINISH_STATE && flush != Z_FINISH)) {
        return Z_STREAM_ERROR;
    }
    if (strm->avail_out == 0) return Z_BUF_ERROR;

    s->strm = strm;
    old_flush = s->last_flush;
    s->last_flush = flush;


    if (s->status == INIT_STATE) {

        uInt header = (Z_DEFLATED + ((s->w_bits-8)<<4)) << 8;
        uInt level_flags = (s->level-1) >> 1;

        if (level_flags > 3) level_flags = 3;
        header |= (level_flags << 6);
 if (s->strstart != 0) header |= PRESET_DICT;
        header += 31 - (header % 31);

        s->status = BUSY_STATE;
        putShortMSB(s, header);


 if (s->strstart != 0) {
     putShortMSB(s, (uInt)(strm->adler >> 16));
     putShortMSB(s, (uInt)(strm->adler & 0xffff));
 }
 strm->adler = 1L;
    }


    if (s->pending != 0) {
        flush_pending(strm);
        if (strm->avail_out == 0) {






     s->last_flush = -1;
     return Z_OK;
 }





    } else if (strm->avail_in == 0 && flush <= old_flush &&
        flush != Z_FINISH) {
        return Z_BUF_ERROR;
    }


    if (s->status == FINISH_STATE && strm->avail_in != 0) {
        return Z_BUF_ERROR;
    }



    if (strm->avail_in != 0 || s->lookahead != 0 ||
        (flush != Z_NO_FLUSH && s->status != FINISH_STATE)) {
        block_state bstate;

 bstate = (*(configuration_table[s->level].func))(s, flush);

        if (bstate == finish_started || bstate == finish_done) {
            s->status = FINISH_STATE;
        }
        if (bstate == need_more || bstate == finish_started) {
     if (strm->avail_out == 0) {
         s->last_flush = -1;
     }
     return Z_OK;







 }
        if (bstate == block_done) {
            if (flush == Z_PARTIAL_FLUSH) {
                zlib_tr_align(s);
     } else if (flush == Z_PACKET_FLUSH) {


  zlib_tr_stored_type_only(s);
            } else {
                zlib_tr_stored_block(s, (char*)0, 0L, 0);



                if (flush == Z_FULL_FLUSH) {
                    CLEAR_HASH(s);
                }
            }
            flush_pending(strm);
     if (strm->avail_out == 0) {
       s->last_flush = -1;
       return Z_OK;
     }
        }
    }
    Assert(strm->avail_out > 0, "bug2");

    if (flush != Z_FINISH) return Z_OK;
    if (s->noheader) return Z_STREAM_END;


    putShortMSB(s, (uInt)(strm->adler >> 16));
    putShortMSB(s, (uInt)(strm->adler & 0xffff));
    flush_pending(strm);



    s->noheader = -1;
    return s->pending != 0 ? Z_OK : Z_STREAM_END;
}
