
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * vtable; } ;
struct TYPE_8__ {size_t ibuf_len; size_t obuf_len; size_t max_frag_len; unsigned int log_max_frag_len; TYPE_1__ out; scalar_t__ peer_log_max_frag_len; void* obuf; int * ibuf; scalar_t__ record_type_out; scalar_t__ version_out; scalar_t__ record_type_in; scalar_t__ version_in; int err; scalar_t__ incrypt; int iomode; } ;
typedef TYPE_2__ br_ssl_engine_context ;


 int BR_ERR_BAD_PARAM ;
 int BR_ERR_OK ;
 int BR_IO_INOUT ;
 size_t MAX_IN_OVERHEAD ;
 size_t MAX_OUT_OVERHEAD ;
 int br_ssl_engine_fail (TYPE_2__*,int ) ;
 int br_sslrec_out_clear_vtable ;
 int make_ready_in (TYPE_2__*) ;
 int make_ready_out (TYPE_2__*) ;

void
br_ssl_engine_set_buffers_bidi(br_ssl_engine_context *rc,
 void *ibuf, size_t ibuf_len, void *obuf, size_t obuf_len)
{
 rc->iomode = BR_IO_INOUT;
 rc->incrypt = 0;
 rc->err = BR_ERR_OK;
 rc->version_in = 0;
 rc->record_type_in = 0;
 rc->version_out = 0;
 rc->record_type_out = 0;
 if (ibuf == ((void*)0)) {
  if (rc->ibuf == ((void*)0)) {
   br_ssl_engine_fail(rc, BR_ERR_BAD_PARAM);
  }
 } else {
  unsigned u;

  rc->ibuf = ibuf;
  rc->ibuf_len = ibuf_len;
  if (obuf == ((void*)0)) {
   obuf = ibuf;
   obuf_len = ibuf_len;
  }
  rc->obuf = obuf;
  rc->obuf_len = obuf_len;
  for (u = 14; u >= 9; u --) {
   size_t flen;

   flen = (size_t)1 << u;
   if (obuf_len >= flen + MAX_OUT_OVERHEAD
    && ibuf_len >= flen + MAX_IN_OVERHEAD)
   {
    break;
   }
  }
  if (u == 8) {
   br_ssl_engine_fail(rc, BR_ERR_BAD_PARAM);
   return;
  } else if (u == 13) {
   u = 12;
  }
  rc->max_frag_len = (size_t)1 << u;
  rc->log_max_frag_len = u;
  rc->peer_log_max_frag_len = 0;
 }
 rc->out.vtable = &br_sslrec_out_clear_vtable;
 make_ready_in(rc);
 make_ready_out(rc);
}
