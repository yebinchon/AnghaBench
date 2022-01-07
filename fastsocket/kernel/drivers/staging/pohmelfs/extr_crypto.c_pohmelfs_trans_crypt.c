
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pohmelfs_sb {int perform_crypto; int cipher_string; int hash_string; } ;
struct netfs_trans {int dummy; } ;


 int netfs_trans_get (struct netfs_trans*) ;
 int pohmelfs_crypto_finish (struct netfs_trans*,struct pohmelfs_sb*,int ) ;
 int pohmelfs_crypto_thread_get (struct pohmelfs_sb*,int ,struct netfs_trans*) ;
 int pohmelfs_trans_crypt_action ;

int pohmelfs_trans_crypt(struct netfs_trans *trans, struct pohmelfs_sb *psb)
{
 if ((!psb->hash_string && !psb->cipher_string) || !psb->perform_crypto) {
  netfs_trans_get(trans);
  return pohmelfs_crypto_finish(trans, psb, 0);
 }

 return pohmelfs_crypto_thread_get(psb, pohmelfs_trans_crypt_action, trans);
}
