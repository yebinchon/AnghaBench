
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int xlen; void* x; int curve; } ;
struct TYPE_11__ {int iqlen; void* iq; int dqlen; void* dq; int dplen; void* dp; int qlen; void* q; int plen; void* p; int n_bitlen; } ;
struct TYPE_13__ {TYPE_2__ ec; TYPE_1__ rsa; } ;
struct TYPE_14__ {int key_type; TYPE_3__ key; } ;
typedef TYPE_4__ private_key ;
typedef int br_skey_decoder_context ;
struct TYPE_15__ {int iqlen; int iq; int dqlen; int dq; int dplen; int dp; int qlen; int q; int plen; int p; int n_bitlen; } ;
typedef TYPE_5__ br_rsa_private_key ;
struct TYPE_16__ {int xlen; int x; int curve; } ;
typedef TYPE_6__ br_ec_private_key ;




 TYPE_6__* br_skey_decoder_get_ec (int *) ;
 TYPE_5__* br_skey_decoder_get_rsa (int *) ;
 int br_skey_decoder_init (int *) ;
 int br_skey_decoder_key_type (int *) ;
 int br_skey_decoder_last_error (int *) ;
 int br_skey_decoder_push (int *,unsigned char const*,size_t) ;
 char* find_error_name (int,char const**) ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 void* xblobdup (int ,int ) ;
 TYPE_4__* xmalloc (int) ;

__attribute__((used)) static private_key *
decode_key(const unsigned char *buf, size_t len)
{
 br_skey_decoder_context dc;
 int err;
 private_key *sk;

 br_skey_decoder_init(&dc);
 br_skey_decoder_push(&dc, buf, len);
 err = br_skey_decoder_last_error(&dc);
 if (err != 0) {
  const char *errname, *errmsg;

  fprintf(stderr, "ERROR (decoding): err=%d\n", err);
  errname = find_error_name(err, &errmsg);
  if (errname != ((void*)0)) {
   fprintf(stderr, "  %s: %s\n", errname, errmsg);
  } else {
   fprintf(stderr, "  (unknown)\n");
  }
  return ((void*)0);
 }
 switch (br_skey_decoder_key_type(&dc)) {
  const br_rsa_private_key *rk;
  const br_ec_private_key *ek;

 case 128:
  rk = br_skey_decoder_get_rsa(&dc);
  sk = xmalloc(sizeof *sk);
  sk->key_type = 128;
  sk->key.rsa.n_bitlen = rk->n_bitlen;
  sk->key.rsa.p = xblobdup(rk->p, rk->plen);
  sk->key.rsa.plen = rk->plen;
  sk->key.rsa.q = xblobdup(rk->q, rk->qlen);
  sk->key.rsa.qlen = rk->qlen;
  sk->key.rsa.dp = xblobdup(rk->dp, rk->dplen);
  sk->key.rsa.dplen = rk->dplen;
  sk->key.rsa.dq = xblobdup(rk->dq, rk->dqlen);
  sk->key.rsa.dqlen = rk->dqlen;
  sk->key.rsa.iq = xblobdup(rk->iq, rk->iqlen);
  sk->key.rsa.iqlen = rk->iqlen;
  break;

 case 129:
  ek = br_skey_decoder_get_ec(&dc);
  sk = xmalloc(sizeof *sk);
  sk->key_type = 129;
  sk->key.ec.curve = ek->curve;
  sk->key.ec.x = xblobdup(ek->x, ek->xlen);
  sk->key.ec.xlen = ek->xlen;
  break;

 default:
  fprintf(stderr, "Unknown key type: %d\n",
   br_skey_decoder_key_type(&dc));
  sk = ((void*)0);
  break;
 }

 return sk;
}
