
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pohmelfs_sb {int hash_string; int cipher_string; } ;


 int pohmelfs_crypto_init_handshake (struct pohmelfs_sb*) ;
 int pohmelfs_sys_crypto_init (struct pohmelfs_sb*) ;

int pohmelfs_crypto_init(struct pohmelfs_sb *psb)
{
 int err;

 if (!psb->cipher_string && !psb->hash_string)
  return 0;

 err = pohmelfs_crypto_init_handshake(psb);
 if (err)
  return err;

 err = pohmelfs_sys_crypto_init(psb);
 if (err)
  return err;

 return 0;
}
