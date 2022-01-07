
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_crypto_ctl {scalar_t__* hash_algo; scalar_t__* cipher_algo; } ;
struct dst_node {int cipher_key; int hash_key; struct dst_crypto_ctl crypto; } ;


 int kfree (int ) ;

void dst_node_crypto_exit(struct dst_node *n)
{
 struct dst_crypto_ctl *ctl = &n->crypto;

 if (ctl->cipher_algo[0] || ctl->hash_algo[0]) {
  kfree(n->hash_key);
  kfree(n->cipher_key);
 }
}
