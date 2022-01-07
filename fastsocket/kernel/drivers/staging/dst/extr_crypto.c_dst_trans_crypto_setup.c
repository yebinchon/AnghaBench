
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_crypto_engine {void* private; } ;



__attribute__((used)) static int dst_trans_crypto_setup(void *crypto_engine, void *trans)
{
 struct dst_crypto_engine *e = crypto_engine;

 e->private = trans;
 return 0;
}
