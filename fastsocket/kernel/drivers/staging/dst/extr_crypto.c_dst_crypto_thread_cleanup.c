
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_crypto_engine {struct dst_crypto_engine* src; } ;


 int dst_crypto_engine_exit (struct dst_crypto_engine*) ;
 int kfree (struct dst_crypto_engine*) ;

__attribute__((used)) static void dst_crypto_thread_cleanup(void *private)
{
 struct dst_crypto_engine *e = private;

 dst_crypto_engine_exit(e);
 kfree(e->src);
 kfree(e);
}
