
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_node {scalar_t__ trans_cache; } ;
struct dst_ctl {int dummy; } ;
struct dst_crypto_ctl {int hash_keysize; int cipher_keysize; } ;


 int EEXIST ;
 int EINVAL ;
 int ENODEV ;
 int dst_node_crypto_init (struct dst_node*,struct dst_crypto_ctl*) ;

__attribute__((used)) static int dst_crypto_init(struct dst_node *n, struct dst_ctl *ctl,
  void *data, unsigned int size)
{
 struct dst_crypto_ctl *crypto = data;

 if (!n)
  return -ENODEV;

 if (size != sizeof(struct dst_crypto_ctl) + crypto->hash_keysize +
   crypto->cipher_keysize)
  return -EINVAL;

 if (n->trans_cache)
  return -EEXIST;

 return dst_node_crypto_init(n, crypto);
}
