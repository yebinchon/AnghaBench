
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INIT_LIST_HEAD (int *) ;
 int key_tfm_list ;
 int key_tfm_list_mutex ;
 int mutex_init (int *) ;

int ecryptfs_init_crypto(void)
{
 mutex_init(&key_tfm_list_mutex);
 INIT_LIST_HEAD(&key_tfm_list);
 return 0;
}
