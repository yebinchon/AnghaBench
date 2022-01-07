
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int outspec ;
typedef int br_skey_decoder_context ;
struct TYPE_7__ {scalar_t__ n_bitlen; } ;
typedef TYPE_1__ br_rsa_private_key ;
struct TYPE_8__ {int curve; } ;
typedef TYPE_2__ br_ec_private_key ;




 TYPE_2__* br_skey_decoder_get_ec (int *) ;
 TYPE_1__* br_skey_decoder_get_rsa (int *) ;
 int br_skey_decoder_init (int *) ;
 int br_skey_decoder_key_type (int *) ;
 int br_skey_decoder_last_error (int *) ;
 int br_skey_decoder_push (int *,unsigned char const*,size_t) ;
 char* ec_curve_name (int) ;
 char* find_error_name (int,char const**) ;
 int fprintf (int ,char*,...) ;
 int print_ec (TYPE_2__ const*,int *) ;
 int print_rsa (TYPE_1__ const*,int *) ;
 int printf (char*,int,...) ;
 int stderr ;

__attribute__((used)) static int
decode_key(const unsigned char *buf, size_t len, outspec *os)
{
 br_skey_decoder_context dc;
 int err, ret;

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
  return 0;
 }
 ret = 1;
 switch (br_skey_decoder_key_type(&dc)) {
  const br_rsa_private_key *rk;
  const br_ec_private_key *ek;

 case 128:
  rk = br_skey_decoder_get_rsa(&dc);
  printf("RSA key (%lu bits)\n", (unsigned long)rk->n_bitlen);
  ret = print_rsa(rk, os);
  break;

 case 129:
  ek = br_skey_decoder_get_ec(&dc);
  printf("EC key (curve = %d: %s)\n",
   ek->curve, ec_curve_name(ek->curve));
  ret = print_ec(ek, os);
  break;

 default:
  fprintf(stderr, "Unknown key type: %d\n",
   br_skey_decoder_key_type(&dc));
  ret = 0;
  break;
 }

 return ret;
}
