
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* vtable; } ;
struct TYPE_9__ {scalar_t__ iomode; unsigned char* ibuf; unsigned char* obuf; size_t ixb; size_t ixa; unsigned int ixc; unsigned char record_type_in; unsigned int version_in; int ibuf_len; TYPE_1__ in; scalar_t__ incrypt; } ;
typedef TYPE_2__ br_ssl_engine_context ;
struct TYPE_10__ {unsigned char* (* decrypt ) (TYPE_3__**,unsigned char,unsigned int,unsigned char*,size_t*) ;int (* check_length ) (TYPE_3__**,unsigned int) ;} ;


 int BR_ERR_BAD_LENGTH ;
 int BR_ERR_BAD_MAC ;
 int BR_ERR_BAD_VERSION ;
 int BR_ERR_TOO_LARGE ;
 int BR_ERR_UNSUPPORTED_VERSION ;
 scalar_t__ BR_IO_IN ;
 scalar_t__ BR_IO_INOUT ;
 unsigned int br_dec16be (unsigned char*) ;
 int br_ssl_engine_fail (TYPE_2__*,int ) ;
 int make_ready_in (TYPE_2__*) ;
 int stub1 (TYPE_3__**,unsigned int) ;
 unsigned char* stub2 (TYPE_3__**,unsigned char,unsigned int,unsigned char*,size_t*) ;

__attribute__((used)) static void
recvrec_ack(br_ssl_engine_context *rc, size_t len)
{
 unsigned char *pbuf;
 size_t pbuf_len;






 if (rc->iomode == BR_IO_INOUT && rc->ibuf == rc->obuf) {
  rc->iomode = BR_IO_IN;
 }




 rc->ixb = (rc->ixa += len);
 rc->ixc -= len;





 if (rc->ixa < 5) {
  return;
 }




 if (rc->ixa == 5) {
  unsigned version;
  unsigned rlen;
  rc->record_type_in = rc->ibuf[0];
  version = br_dec16be(rc->ibuf + 1);
  if ((version >> 8) != 3) {
   br_ssl_engine_fail(rc, BR_ERR_UNSUPPORTED_VERSION);
   return;
  }







  if (rc->version_in != 0 && rc->version_in != version) {
   br_ssl_engine_fail(rc, BR_ERR_BAD_VERSION);
   return;
  }
  rc->version_in = version;
  rlen = br_dec16be(rc->ibuf + 3);
  if (rc->incrypt) {
   if (!rc->in.vtable->check_length(
    &rc->in.vtable, rlen))
   {
    br_ssl_engine_fail(rc, BR_ERR_BAD_LENGTH);
    return;
   }
   if (rlen > (rc->ibuf_len - 5)) {
    br_ssl_engine_fail(rc, BR_ERR_TOO_LARGE);
    return;
   }
  } else {
   if (rlen > 16384) {
    br_ssl_engine_fail(rc, BR_ERR_BAD_LENGTH);
    return;
   }
  }
  if (rlen == 0) {
   make_ready_in(rc);
  } else {
   rc->ixa = rc->ixb = 5;
   rc->ixc = rlen;
  }
  return;
 }







 if (!rc->incrypt) {
  rc->ixa = 5;
  return;
 }





 if (rc->ixc != 0) {
  return;
 }




 pbuf_len = rc->ixa - 5;
 pbuf = rc->in.vtable->decrypt(&rc->in.vtable,
  rc->record_type_in, rc->version_in, rc->ibuf + 5, &pbuf_len);
 if (pbuf == 0) {
  br_ssl_engine_fail(rc, BR_ERR_BAD_MAC);
  return;
 }
 rc->ixa = (size_t)(pbuf - rc->ibuf);
 rc->ixb = rc->ixa + pbuf_len;





 if (rc->ixa == rc->ixb) {
  make_ready_in(rc);
 }
}
