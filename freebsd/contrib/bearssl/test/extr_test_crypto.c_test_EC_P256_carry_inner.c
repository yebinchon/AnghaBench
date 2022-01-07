
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* mul ) (unsigned char*,size_t,unsigned char*,int,int ) ;} ;
typedef TYPE_1__ br_ec_impl ;


 int BR_EC_secp256r1 ;
 int EXIT_FAILURE ;
 int check_equals (char*,unsigned char*,unsigned char*,size_t) ;
 int exit (int ) ;
 int fflush (int ) ;
 int fprintf (int ,char*) ;
 size_t hextobin (unsigned char*,char const*) ;
 int printf (char*) ;
 int stderr ;
 int stdout ;
 int stub1 (unsigned char*,size_t,unsigned char*,int,int ) ;

__attribute__((used)) static void
test_EC_P256_carry_inner(const br_ec_impl *impl, const char *sP, const char *sQ)
{
 unsigned char P[65], Q[sizeof P], k[1];
 size_t plen, qlen;

 plen = hextobin(P, sP);
 qlen = hextobin(Q, sQ);
 if (plen != sizeof P || qlen != sizeof P) {
  fprintf(stderr, "KAT is incorrect\n");
  exit(EXIT_FAILURE);
 }
 k[0] = 0x10;
 if (impl->mul(P, plen, k, 1, BR_EC_secp256r1) != 1) {
  fprintf(stderr, "P-256 multiplication failed\n");
  exit(EXIT_FAILURE);
 }
 check_equals("P256_carry", P, Q, plen);
 printf(".");
 fflush(stdout);
}
