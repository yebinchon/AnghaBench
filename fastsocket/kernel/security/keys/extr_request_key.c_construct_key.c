
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct key_construction {void* key; void* authkey; } ;
struct key {int flags; TYPE_1__* type; int serial; } ;
typedef int (* request_key_actor_t ) (struct key_construction*,char*,void*) ;
struct TYPE_2__ {int (* request_key ) (struct key_construction*,char*,void*) ;} ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct key*) ;
 int KEY_FLAG_REVOKED ;
 int PTR_ERR (struct key*) ;
 int WARN_ON (int) ;
 int call_sbin_request_key (struct key_construction*,char*,void*) ;
 int kenter (char*,int ,void const*,size_t,void*) ;
 void* key_get (struct key*) ;
 int key_put (struct key*) ;
 int kfree (struct key_construction*) ;
 int kleave (char*,int) ;
 struct key_construction* kmalloc (int,int ) ;
 struct key* request_key_auth_new (struct key*,void const*,size_t,struct key*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int construct_key(struct key *key, const void *callout_info,
    size_t callout_len, void *aux,
    struct key *dest_keyring)
{
 struct key_construction *cons;
 request_key_actor_t actor;
 struct key *authkey;
 int ret;

 kenter("%d,%p,%zu,%p", key->serial, callout_info, callout_len, aux);

 cons = kmalloc(sizeof(*cons), GFP_KERNEL);
 if (!cons)
  return -ENOMEM;


 authkey = request_key_auth_new(key, callout_info, callout_len,
           dest_keyring);
 if (IS_ERR(authkey)) {
  kfree(cons);
  ret = PTR_ERR(authkey);
  authkey = ((void*)0);
 } else {
  cons->authkey = key_get(authkey);
  cons->key = key_get(key);


  actor = call_sbin_request_key;
  if (key->type->request_key)
   actor = key->type->request_key;

  ret = actor(cons, "create", aux);



  WARN_ON(ret < 0 &&
   !test_bit(KEY_FLAG_REVOKED, &authkey->flags));
  key_put(authkey);
 }

 kleave(" = %d", ret);
 return ret;
}
