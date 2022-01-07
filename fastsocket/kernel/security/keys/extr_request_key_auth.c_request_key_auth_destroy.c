
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_key_auth {struct request_key_auth* callout_info; int dest_keyring; int target_key; int * cred; } ;
struct TYPE_2__ {struct request_key_auth* data; } ;
struct key {int serial; TYPE_1__ payload; } ;


 int kenter (char*,int ) ;
 int key_put (int ) ;
 int kfree (struct request_key_auth*) ;
 int put_cred (int *) ;

__attribute__((used)) static void request_key_auth_destroy(struct key *key)
{
 struct request_key_auth *rka = key->payload.data;

 kenter("{%d}", key->serial);

 if (rka->cred) {
  put_cred(rka->cred);
  rka->cred = ((void*)0);
 }

 key_put(rka->target_key);
 key_put(rka->dest_keyring);
 kfree(rka->callout_info);
 kfree(rka);
}
