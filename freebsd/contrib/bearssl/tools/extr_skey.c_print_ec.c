
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * pk8pem; int * pk8der; int * rawpem; int * rawder; scalar_t__ print_C; scalar_t__ print_text; } ;
typedef TYPE_1__ outspec ;
typedef int br_ec_public_key ;
struct TYPE_9__ {int curve; int xlen; int x; } ;
typedef TYPE_2__ br_ec_private_key ;


 int BR_EC_KBUF_PUB_MAX_SIZE ;
 scalar_t__ br_ec_compute_pub (int ,int *,unsigned int*,TYPE_2__ const*) ;
 int br_ec_get_default () ;
 size_t br_encode_ec_pkcs8_der (unsigned char*,TYPE_2__ const*,int *) ;
 size_t br_encode_ec_raw_der (unsigned char*,TYPE_2__ const*,int *) ;
 int fprintf (int ,char*) ;
 int print_int_C (char*,int ,int ) ;
 int print_int_text (char*,int ,int ) ;
 int printf (char*,...) ;
 int stderr ;
 int write_to_file (int *,unsigned char*,size_t) ;
 int write_to_pem_file (int *,unsigned char*,size_t,char*) ;
 int xfree (unsigned char*) ;
 unsigned char* xmalloc (size_t) ;

__attribute__((used)) static int
print_ec(const br_ec_private_key *sk, outspec *os)
{
 br_ec_public_key pk;
 unsigned kbuf[BR_EC_KBUF_PUB_MAX_SIZE];
 unsigned char *buf;
 size_t len;
 int r;

 if (os->print_text) {
  print_int_text("x", sk->x, sk->xlen);
 }
 if (os->print_C) {
  print_int_C("EC_X", sk->x, sk->xlen);
  printf("\nstatic const br_ec_private_key EC = {\n");
  printf("\t%d,\n", sk->curve);
  printf("\t(unsigned char *)EC_X, sizeof EC_X\n");
  printf("};\n");
 }

 if (os->rawder == ((void*)0) && os->rawpem == ((void*)0)
  && os->pk8der == ((void*)0) && os->pk8pem == ((void*)0))
 {
  return 1;
 }
 if (br_ec_compute_pub(br_ec_get_default(), &pk, kbuf, sk) == 0) {
  fprintf(stderr,
   "ERROR: cannot re-encode (unsupported curve)\n");
  return 0;
 }

 r = 1;
 if (os->rawder != ((void*)0) || os->rawpem != ((void*)0)) {
  len = br_encode_ec_raw_der(((void*)0), sk, &pk);
  if (len == 0) {
   fprintf(stderr, "ERROR: cannot re-encode"
    " (unsupported curve)\n");
   return 0;
  }
  buf = xmalloc(len);
  if (br_encode_ec_raw_der(buf, sk, &pk) != len) {
   fprintf(stderr, "ERROR: re-encode failure\n");
   xfree(buf);
   return 0;
  }
  if (os->rawder != ((void*)0)) {
   r &= write_to_file(os->rawder, buf, len);
  }
  if (os->rawpem != ((void*)0)) {
   r &= write_to_pem_file(os->rawpem,
    buf, len, "EC PRIVATE KEY");
  }
  xfree(buf);
 }
 if (os->pk8der != ((void*)0) || os->pk8pem != ((void*)0)) {
  len = br_encode_ec_pkcs8_der(((void*)0), sk, &pk);
  if (len == 0) {
   fprintf(stderr, "ERROR: cannot re-encode"
    " (unsupported curve)\n");
   return 0;
  }
  buf = xmalloc(len);
  if (br_encode_ec_pkcs8_der(buf, sk, &pk) != len) {
   fprintf(stderr, "ERROR: re-encode failure\n");
   xfree(buf);
   return 0;
  }
  if (os->pk8der != ((void*)0)) {
   r &= write_to_file(os->pk8der, buf, len);
  }
  if (os->pk8pem != ((void*)0)) {
   r &= write_to_pem_file(os->pk8pem,
    buf, len, "PRIVATE KEY");
  }
  xfree(buf);
 }
 return r;
}
