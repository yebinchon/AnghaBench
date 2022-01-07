
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_10__ {int const issuer_key_type; scalar_t__ verbose; scalar_t__ chain_len; int * chain; TYPE_3__* sk; } ;
typedef TYPE_4__ ccert_context ;
typedef int br_ssl_client_context ;
typedef int br_ssl_client_certificate_class ;
struct TYPE_11__ {int hash_id; scalar_t__ chain_len; int * chain; int auth_type; } ;
typedef TYPE_5__ br_ssl_client_certificate ;
struct TYPE_7__ {int curve; } ;
struct TYPE_8__ {TYPE_1__ ec; } ;
struct TYPE_9__ {int key_type; TYPE_2__ key; } ;


 int BR_AUTH_ECDH ;
 int BR_AUTH_ECDSA ;
 int BR_AUTH_RSA ;


 int br_ssl_client_get_server_curve (int const*) ;
 unsigned int br_ssl_client_get_server_hashes (int const*) ;
 void* choose_hash (int) ;
 char* ec_curve_name (int) ;
 int fprintf (int ,char*,...) ;
 char* hash_function_name (int) ;
 int print_hashes (int,unsigned int) ;
 int stderr ;

__attribute__((used)) static void
cc_choose(const br_ssl_client_certificate_class **pctx,
 const br_ssl_client_context *cc, uint32_t auth_types,
 br_ssl_client_certificate *choices)
{
 ccert_context *zc;
 int scurve;

 zc = (ccert_context *)pctx;
 scurve = br_ssl_client_get_server_curve(cc);
 if (zc->verbose) {
  unsigned hashes;

  hashes = br_ssl_client_get_server_hashes(cc);
  if ((auth_types & 0x00FF) != 0) {
   fprintf(stderr, "supported: RSA signatures:");
   print_hashes(auth_types, hashes);
   fprintf(stderr, "\n");
  }
  if ((auth_types & 0xFF00) != 0) {
   fprintf(stderr, "supported: ECDSA signatures:");
   print_hashes(auth_types >> 8, hashes >> 8);
   fprintf(stderr, "\n");
  }
  if ((auth_types & 0x010000) != 0) {
   fprintf(stderr, "supported:"
    " fixed ECDH (cert signed with RSA)\n");
  }
  if ((auth_types & 0x020000) != 0) {
   fprintf(stderr, "supported:"
    " fixed ECDH (cert signed with ECDSA)\n");
  }
  if (scurve) {
   fprintf(stderr, "server key curve: %s (%d)\n",
    ec_curve_name(scurve), scurve);
  } else {
   fprintf(stderr, "server key is not EC\n");
  }
 }
 switch (zc->sk->key_type) {
 case 128:
  if ((choices->hash_id = choose_hash(auth_types)) >= 0) {
   if (zc->verbose) {
    fprintf(stderr, "using RSA, hash = %d (%s)\n",
     choices->hash_id,
     hash_function_name(choices->hash_id));
   }
   choices->auth_type = BR_AUTH_RSA;
   choices->chain = zc->chain;
   choices->chain_len = zc->chain_len;
   return;
  }
  break;
 case 129:
  if (zc->issuer_key_type != 0
   && scurve == zc->sk->key.ec.curve)
  {
   int x;

   x = (zc->issuer_key_type == 128) ? 16 : 17;
   if (((auth_types >> x) & 1) != 0) {
    if (zc->verbose) {
     fprintf(stderr, "using static ECDH\n");
    }
    choices->auth_type = BR_AUTH_ECDH;
    choices->hash_id = -1;
    choices->chain = zc->chain;
    choices->chain_len = zc->chain_len;
    return;
   }
  }
  if ((choices->hash_id = choose_hash(auth_types >> 8)) >= 0) {
   if (zc->verbose) {
    fprintf(stderr, "using ECDSA, hash = %d (%s)\n",
     choices->hash_id,
     hash_function_name(choices->hash_id));
   }
   choices->auth_type = BR_AUTH_ECDSA;
   choices->chain = zc->chain;
   choices->chain_len = zc->chain_len;
   return;
  }
  break;
 }
 if (zc->verbose) {
  fprintf(stderr, "no matching client certificate\n");
 }
 choices->chain = ((void*)0);
 choices->chain_len = 0;
}
