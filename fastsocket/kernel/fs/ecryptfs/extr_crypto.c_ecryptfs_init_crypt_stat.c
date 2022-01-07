
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecryptfs_crypt_stat {int flags; int cs_hash_tfm_mutex; int cs_tfm_mutex; int cs_mutex; int keysig_list_mutex; int keysig_list; } ;


 int ECRYPTFS_STRUCT_INITIALIZED ;
 int INIT_LIST_HEAD (int *) ;
 int memset (void*,int ,int) ;
 int mutex_init (int *) ;

void
ecryptfs_init_crypt_stat(struct ecryptfs_crypt_stat *crypt_stat)
{
 memset((void *)crypt_stat, 0, sizeof(struct ecryptfs_crypt_stat));
 INIT_LIST_HEAD(&crypt_stat->keysig_list);
 mutex_init(&crypt_stat->keysig_list_mutex);
 mutex_init(&crypt_stat->cs_mutex);
 mutex_init(&crypt_stat->cs_tfm_mutex);
 mutex_init(&crypt_stat->cs_hash_tfm_mutex);
 crypt_stat->flags |= ECRYPTFS_STRUCT_INITIALIZED;
}
