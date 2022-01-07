
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int br_tls_prf_impl ;
struct TYPE_4__ {scalar_t__ version; } ;
struct TYPE_5__ {int prf10; int prf_sha256; int prf_sha384; TYPE_1__ session; } ;
typedef TYPE_2__ br_ssl_engine_context ;


 scalar_t__ BR_TLS12 ;
 int br_sha384_ID ;

br_tls_prf_impl
br_ssl_engine_get_PRF(br_ssl_engine_context *cc, int prf_id)
{
 if (cc->session.version >= BR_TLS12) {
  if (prf_id == br_sha384_ID) {
   return cc->prf_sha384;
  } else {
   return cc->prf_sha256;
  }
 } else {
  return cc->prf10;
 }
}
