
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int record_type_in; int application_data; } ;
typedef TYPE_1__ br_ssl_engine_context ;


 int BR_ERR_UNEXPECTED ;




 scalar_t__ br_ssl_engine_closed (TYPE_1__*) ;
 int br_ssl_engine_fail (TYPE_1__*,int ) ;
 int jump_handshake (TYPE_1__*,int ) ;
 int recvpld_ack (TYPE_1__*,size_t) ;
 unsigned char* recvpld_buf (TYPE_1__*,size_t*) ;
 int recvrec_ack (TYPE_1__*,size_t) ;

void
br_ssl_engine_recvrec_ack(br_ssl_engine_context *cc, size_t len)
{
 unsigned char *buf;

 recvrec_ack(cc, len);
 if (br_ssl_engine_closed(cc)) {
  return;
 }






 buf = recvpld_buf(cc, &len);
 if (buf != ((void*)0)) {
  switch (cc->record_type_in) {
  case 129:
  case 131:
  case 128:
   jump_handshake(cc, 0);
   break;
  case 130:
   if (cc->application_data == 1) {
    break;
   }






   if (cc->application_data == 2) {
    recvpld_ack(cc, len);
    break;
   }


  default:
   br_ssl_engine_fail(cc, BR_ERR_UNEXPECTED);
   break;
  }
 }
}
