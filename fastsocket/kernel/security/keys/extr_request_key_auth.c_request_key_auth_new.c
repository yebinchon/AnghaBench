
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct request_key_auth {size_t callout_len; struct request_key_auth* callout_info; struct key* dest_keyring; struct key* target_key; int pid; struct cred const* cred; } ;
struct key {int serial; int usage; } ;
struct cred {TYPE_2__* request_key_auth; int fsgid; int fsuid; } ;
struct TYPE_6__ {int pid; struct cred* cred; } ;
struct TYPE_4__ {struct request_key_auth* data; } ;
struct TYPE_5__ {int sem; TYPE_1__ payload; int flags; } ;


 int EKEYREVOKED ;
 int ENOMEM ;
 struct key* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct key*) ;
 int KEY_ALLOC_NOT_IN_QUOTA ;
 int KEY_FLAG_REVOKED ;
 int KEY_POS_READ ;
 int KEY_POS_SEARCH ;
 int KEY_POS_VIEW ;
 int KEY_USR_VIEW ;
 int PTR_ERR (struct key*) ;
 int atomic_read (int *) ;
 TYPE_3__* current ;
 int down_read (int *) ;
 void* get_cred (struct cred const*) ;
 int kenter (char*,int) ;
 struct key* key_alloc (int *,char*,int ,int ,struct cred const*,int,int ) ;
 void* key_get (struct key*) ;
 int key_instantiate_and_link (struct key*,struct request_key_auth*,int ,int *,int *) ;
 int key_put (struct key*) ;
 int key_revoke (struct key*) ;
 int key_type_request_key_auth ;
 int kfree (struct request_key_auth*) ;
 int kleave (char*,...) ;
 void* kmalloc (size_t,int ) ;
 int memcpy (struct request_key_auth*,void const*,size_t) ;
 int sprintf (char*,char*,int) ;
 scalar_t__ test_bit (int ,int *) ;
 int up_read (int *) ;

struct key *request_key_auth_new(struct key *target, const void *callout_info,
     size_t callout_len, struct key *dest_keyring)
{
 struct request_key_auth *rka, *irka;
 const struct cred *cred = current->cred;
 struct key *authkey = ((void*)0);
 char desc[20];
 int ret;

 kenter("%d,", target->serial);


 rka = kmalloc(sizeof(*rka), GFP_KERNEL);
 if (!rka) {
  kleave(" = -ENOMEM");
  return ERR_PTR(-ENOMEM);
 }
 rka->callout_info = kmalloc(callout_len, GFP_KERNEL);
 if (!rka->callout_info) {
  kleave(" = -ENOMEM");
  kfree(rka);
  return ERR_PTR(-ENOMEM);
 }



 if (cred->request_key_auth) {

  down_read(&cred->request_key_auth->sem);



  if (test_bit(KEY_FLAG_REVOKED, &cred->request_key_auth->flags))
   goto auth_key_revoked;

  irka = cred->request_key_auth->payload.data;
  rka->cred = get_cred(irka->cred);
  rka->pid = irka->pid;

  up_read(&cred->request_key_auth->sem);
 }
 else {

  rka->cred = get_cred(cred);
  rka->pid = current->pid;
 }

 rka->target_key = key_get(target);
 rka->dest_keyring = key_get(dest_keyring);
 memcpy(rka->callout_info, callout_info, callout_len);
 rka->callout_len = callout_len;


 sprintf(desc, "%x", target->serial);

 authkey = key_alloc(&key_type_request_key_auth, desc,
       cred->fsuid, cred->fsgid, cred,
       KEY_POS_VIEW | KEY_POS_READ | KEY_POS_SEARCH |
       KEY_USR_VIEW, KEY_ALLOC_NOT_IN_QUOTA);
 if (IS_ERR(authkey)) {
  ret = PTR_ERR(authkey);
  goto error_alloc;
 }


 ret = key_instantiate_and_link(authkey, rka, 0, ((void*)0), ((void*)0));
 if (ret < 0)
  goto error_inst;

 kleave(" = {%d,%d}", authkey->serial, atomic_read(&authkey->usage));
 return authkey;

auth_key_revoked:
 up_read(&cred->request_key_auth->sem);
 kfree(rka->callout_info);
 kfree(rka);
 kleave("= -EKEYREVOKED");
 return ERR_PTR(-EKEYREVOKED);

error_inst:
 key_revoke(authkey);
 key_put(authkey);
error_alloc:
 key_put(rka->target_key);
 key_put(rka->dest_keyring);
 kfree(rka->callout_info);
 kfree(rka);
 kleave("= %d", ret);
 return ERR_PTR(ret);
}
