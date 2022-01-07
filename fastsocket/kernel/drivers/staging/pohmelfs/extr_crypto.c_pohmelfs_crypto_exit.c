
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pohmelfs_sb {int cipher_string; int hash_string; } ;


 int kfree (int ) ;
 int pohmelfs_sys_crypto_exit (struct pohmelfs_sb*) ;

void pohmelfs_crypto_exit(struct pohmelfs_sb *psb)
{
 pohmelfs_sys_crypto_exit(psb);

 kfree(psb->hash_string);
 kfree(psb->cipher_string);
}
