
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef int br_ssl_client_context ;
struct TYPE_7__ {int allowed_usages; scalar_t__ issuer_key_type; int chain_len; int chain; TYPE_1__* sk; } ;
typedef TYPE_2__ br_ssl_client_certificate_ec_context ;
typedef int br_ssl_client_certificate_class ;
struct TYPE_8__ {int hash_id; int chain_len; int chain; int auth_type; } ;
typedef TYPE_3__ br_ssl_client_certificate ;
struct TYPE_6__ {int curve; } ;


 int BR_AUTH_ECDH ;
 int BR_AUTH_ECDSA ;
 int BR_KEYTYPE_KEYX ;
 scalar_t__ BR_KEYTYPE_RSA ;
 int BR_KEYTYPE_SIGN ;
 int br_ssl_choose_hash (unsigned int) ;
 int br_ssl_client_get_server_curve (int const*) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static void
cc_choose(const br_ssl_client_certificate_class **pctx,
 const br_ssl_client_context *cc, uint32_t auth_types,
 br_ssl_client_certificate *choices)
{
 br_ssl_client_certificate_ec_context *zc;
 int x;
 int scurve;

 zc = (br_ssl_client_certificate_ec_context *)pctx;
 scurve = br_ssl_client_get_server_curve(cc);

 if ((zc->allowed_usages & BR_KEYTYPE_KEYX) != 0
  && scurve == zc->sk->curve)
 {
  int x;

  x = (zc->issuer_key_type == BR_KEYTYPE_RSA) ? 16 : 17;
  if (((auth_types >> x) & 1) != 0) {
   choices->auth_type = BR_AUTH_ECDH;
   choices->hash_id = -1;
   choices->chain = zc->chain;
   choices->chain_len = zc->chain_len;
  }
 }





 x = br_ssl_choose_hash((unsigned)(auth_types >> 8));
 if (x == 0 || (zc->allowed_usages & BR_KEYTYPE_SIGN) == 0) {
  memset(choices, 0, sizeof *choices);
  return;
 }
 choices->auth_type = BR_AUTH_ECDSA;
 choices->hash_id = x;
 choices->chain = zc->chain;
 choices->chain_len = zc->chain_len;
}
