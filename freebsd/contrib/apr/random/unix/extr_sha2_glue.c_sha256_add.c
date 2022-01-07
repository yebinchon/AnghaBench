
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int apr_size_t ;
struct TYPE_3__ {int data; } ;
typedef TYPE_1__ apr_crypto_hash_t ;


 int apr__SHA256_Update (int ,void const*,int ) ;

__attribute__((used)) static void sha256_add(apr_crypto_hash_t *h,const void *data,
                       apr_size_t bytes)
{
    apr__SHA256_Update(h->data,data,bytes);
}
