
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_hkdf_context ;
typedef int br_hash_class ;


 unsigned char* BR_HKDF_NO_SALT ;
 int br_hkdf_flip (int *) ;
 int br_hkdf_init (int *,int const*,unsigned char const*,size_t) ;
 int br_hkdf_inject (int *,unsigned char*,size_t) ;
 int br_hkdf_produce (int *,unsigned char*,size_t,unsigned char*,int) ;
 int check_equals (char*,unsigned char*,unsigned char*,size_t) ;
 int fflush (int ) ;
 size_t hextobin (unsigned char*,char const*) ;
 int printf (char*) ;
 int stdout ;

__attribute__((used)) static void
test_HKDF_inner(const br_hash_class *dig, const char *ikmhex,
 const char *salthex, const char *infohex, const char *okmhex)
{
 unsigned char ikm[100], saltbuf[100], info[100], okm[100], tmp[107];
 const unsigned char *salt;
 size_t ikm_len, salt_len, info_len, okm_len;
 br_hkdf_context hc;
 size_t u;

 ikm_len = hextobin(ikm, ikmhex);
 if (salthex == ((void*)0)) {
  salt = BR_HKDF_NO_SALT;
  salt_len = 0;
 } else {
  salt = saltbuf;
  salt_len = hextobin(saltbuf, salthex);
 }
 info_len = hextobin(info, infohex);
 okm_len = hextobin(okm, okmhex);

 br_hkdf_init(&hc, dig, salt, salt_len);
 br_hkdf_inject(&hc, ikm, ikm_len);
 br_hkdf_flip(&hc);
 br_hkdf_produce(&hc, info, info_len, tmp, okm_len);
 check_equals("KAT HKDF 1", tmp, okm, okm_len);

 br_hkdf_init(&hc, dig, salt, salt_len);
 for (u = 0; u < ikm_len; u ++) {
  br_hkdf_inject(&hc, &ikm[u], 1);
 }
 br_hkdf_flip(&hc);
 for (u = 0; u < okm_len; u ++) {
  br_hkdf_produce(&hc, info, info_len, &tmp[u], 1);
 }
 check_equals("KAT HKDF 2", tmp, okm, okm_len);

 br_hkdf_init(&hc, dig, salt, salt_len);
 br_hkdf_inject(&hc, ikm, ikm_len);
 br_hkdf_flip(&hc);
 for (u = 0; u < okm_len; u += 7) {
  br_hkdf_produce(&hc, info, info_len, &tmp[u], 7);
 }
 check_equals("KAT HKDF 3", tmp, okm, okm_len);

 printf(".");
 fflush(stdout);
}
