
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_shared_key {int * key; int key_list; } ;


 int BUG_ON (int) ;
 int kfree (struct sctp_shared_key*) ;
 int list_empty (int *) ;
 int sctp_auth_key_put (int *) ;

__attribute__((used)) static void sctp_auth_shkey_free(struct sctp_shared_key *sh_key)
{
 BUG_ON(!list_empty(&sh_key->key_list));
 sctp_auth_key_put(sh_key->key);
 sh_key->key = ((void*)0);
 kfree(sh_key);
}
