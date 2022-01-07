
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int n_bitlen; } ;
typedef TYPE_1__ br_rsa_private_key ;
typedef int (* br_rsa_private ) (unsigned char*,TYPE_1__ const*) ;


 int EQ (unsigned char,int) ;
 int NEQ (unsigned char,int ) ;
 int memmove (unsigned char*,unsigned char*,int) ;

uint32_t
br_rsa_ssl_decrypt(br_rsa_private core, const br_rsa_private_key *sk,
 unsigned char *data, size_t len)
{
 uint32_t x;
 size_t u;





 if (len < 59 || len != (sk->n_bitlen + 7) >> 3) {
  return 0;
 }
 x = core(data, sk);

 x &= EQ(data[0], 0x00);
 x &= EQ(data[1], 0x02);
 for (u = 2; u < (len - 49); u ++) {
  x &= NEQ(data[u], 0);
 }
 x &= EQ(data[len - 49], 0x00);
 memmove(data, data + len - 48, 48);
 return x;
}
