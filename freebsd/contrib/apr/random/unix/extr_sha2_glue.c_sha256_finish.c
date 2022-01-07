
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
typedef TYPE_1__ apr_crypto_hash_t ;


 int apr__SHA256_Final (unsigned char*,int ) ;

__attribute__((used)) static void sha256_finish(apr_crypto_hash_t *h,unsigned char *result)
{
    apr__SHA256_Final(result,h->data);
}
