
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct key {int dummy; } ;
struct cred {int jit_keyring; struct key* thread_keyring; } ;
struct TYPE_3__ {int name; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct key*) ;
 int KEY_ALLOC_NOT_IN_QUOTA ;
 int KEY_POS_ALL ;
 int KEY_POS_SETATTR ;
 int KEY_REQKEY_DEFL_THREAD_KEYRING ;
 int KEY_USR_READ ;
 int KEY_USR_VIEW ;
 int PTR_ERR (struct key*) ;
 int cFYI (int,char*,int ) ;
 TYPE_1__ cifs_idmap_key_type ;
 struct key* key_alloc (int *,char*,int ,int ,struct cred*,int,int ) ;
 int key_instantiate_and_link (struct key*,int *,int ,int *,int *) ;
 int key_put (struct key*) ;
 int key_serial (struct key*) ;
 int key_type_keyring ;
 struct cred* prepare_kernel_cred (int *) ;
 int put_cred (struct cred*) ;
 int register_key_type (TYPE_1__*) ;
 struct cred* root_cred ;

int
init_cifs_idmap(void)
{
 struct cred *cred;
 struct key *keyring;
 int ret;

 cFYI(1, "Registering the %s key type\n", cifs_idmap_key_type.name);







 cred = prepare_kernel_cred(((void*)0));
 if (!cred)
  return -ENOMEM;

 keyring = key_alloc(&key_type_keyring, ".cifs_idmap", 0, 0, cred,
       (KEY_POS_ALL & ~KEY_POS_SETATTR) |
       KEY_USR_VIEW | KEY_USR_READ,
       KEY_ALLOC_NOT_IN_QUOTA);
 if (IS_ERR(keyring)) {
  ret = PTR_ERR(keyring);
  goto failed_put_cred;
 }

 ret = key_instantiate_and_link(keyring, ((void*)0), 0, ((void*)0), ((void*)0));
 if (ret < 0)
  goto failed_put_key;

 ret = register_key_type(&cifs_idmap_key_type);
 if (ret < 0)
  goto failed_put_key;



 cred->thread_keyring = keyring;
 cred->jit_keyring = KEY_REQKEY_DEFL_THREAD_KEYRING;
 root_cred = cred;

 cFYI(1, "cifs idmap keyring: %d", key_serial(keyring));
 return 0;

failed_put_key:
 key_put(keyring);
failed_put_cred:
 put_cred(cred);
 return ret;
}
