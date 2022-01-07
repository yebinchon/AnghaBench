
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int apr_uint32_t ;
struct TYPE_3__ {int* data; int* digest; } ;
typedef TYPE_1__ apr_sha1_ctx_t ;


 int FUNC (int,int) ;
 int ROT32 (int,int) ;

__attribute__((used)) static void sha_transform(apr_sha1_ctx_t *sha_info)
{
    int i;
    apr_uint32_t temp, A, B, C, D, E, W[80];

    for (i = 0; i < 16; ++i) {
 W[i] = sha_info->data[i];
    }
    for (i = 16; i < 80; ++i) {
 W[i] = W[i-3] ^ W[i-8] ^ W[i-14] ^ W[i-16];



    }
    A = sha_info->digest[0];
    B = sha_info->digest[1];
    C = sha_info->digest[2];
    D = sha_info->digest[3];
    E = sha_info->digest[4];
    for (i = 0; i < 20; ++i) {
 FUNC(1,i);
    }
    for (i = 20; i < 40; ++i) {
 FUNC(2,i);
    }
    for (i = 40; i < 60; ++i) {
 FUNC(3,i);
    }
    for (i = 60; i < 80; ++i) {
 FUNC(4,i);
    }

    sha_info->digest[0] += A;
    sha_info->digest[1] += B;
    sha_info->digest[2] += C;
    sha_info->digest[3] += D;
    sha_info->digest[4] += E;
}
