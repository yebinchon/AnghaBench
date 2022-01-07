
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ reneg; } ;
struct TYPE_7__ {TYPE_3__ eng; } ;
typedef TYPE_1__ br_ssl_server_context ;


 scalar_t__ BR_ERR_OK ;
 int br_ssl_engine_hs_reset (TYPE_3__*,int ,int ) ;
 int br_ssl_engine_init_rand (TYPE_3__*) ;
 scalar_t__ br_ssl_engine_last_error (TYPE_3__*) ;
 int br_ssl_engine_set_buffer (TYPE_3__*,int *,int ,int ) ;
 int br_ssl_hs_server_init_main ;
 int br_ssl_hs_server_run ;

int
br_ssl_server_reset(br_ssl_server_context *cc)
{
 br_ssl_engine_set_buffer(&cc->eng, ((void*)0), 0, 0);
 if (!br_ssl_engine_init_rand(&cc->eng)) {
  return 0;
 }
 cc->eng.reneg = 0;
 br_ssl_engine_hs_reset(&cc->eng,
  br_ssl_hs_server_init_main, br_ssl_hs_server_run);
 return br_ssl_engine_last_error(&cc->eng) == BR_ERR_OK;
}
