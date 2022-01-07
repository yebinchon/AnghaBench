
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__* server_name; scalar_t__ reneg; int version_min; int version_out; } ;
struct TYPE_9__ {TYPE_2__ eng; } ;
typedef TYPE_1__ br_ssl_client_context ;


 int BR_ERR_BAD_PARAM ;
 scalar_t__ BR_ERR_OK ;
 int br_ssl_client_forget_session (TYPE_1__*) ;
 int br_ssl_engine_fail (TYPE_2__*,int ) ;
 int br_ssl_engine_hs_reset (TYPE_2__*,int ,int ) ;
 int br_ssl_engine_init_rand (TYPE_2__*) ;
 scalar_t__ br_ssl_engine_last_error (TYPE_2__*) ;
 int br_ssl_engine_set_buffer (TYPE_2__*,int *,int ,int ) ;
 int br_ssl_hs_client_init_main ;
 int br_ssl_hs_client_run ;
 int memcpy (scalar_t__*,char const*,size_t) ;
 int strlen (char const*) ;

int
br_ssl_client_reset(br_ssl_client_context *cc,
 const char *server_name, int resume_session)
{
 size_t n;

 br_ssl_engine_set_buffer(&cc->eng, ((void*)0), 0, 0);
 cc->eng.version_out = cc->eng.version_min;
 if (!resume_session) {
  br_ssl_client_forget_session(cc);
 }
 if (!br_ssl_engine_init_rand(&cc->eng)) {
  return 0;
 }







 cc->eng.reneg = 0;

 if (server_name == ((void*)0)) {
  cc->eng.server_name[0] = 0;
 } else {
  n = strlen(server_name) + 1;
  if (n > sizeof cc->eng.server_name) {
   br_ssl_engine_fail(&cc->eng, BR_ERR_BAD_PARAM);
   return 0;
  }
  memcpy(cc->eng.server_name, server_name, n);
 }

 br_ssl_engine_hs_reset(&cc->eng,
  br_ssl_hs_client_init_main, br_ssl_hs_client_run);
 return br_ssl_engine_last_error(&cc->eng) == BR_ERR_OK;
}
