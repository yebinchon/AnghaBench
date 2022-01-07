
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct key {int dummy; } ;
struct cred {int dummy; } ;
typedef int gid_t ;


 struct key* ERR_PTR (int) ;
 int IS_ERR (struct key*) ;
 int KEY_POS_ALL ;
 int KEY_POS_SETATTR ;
 int KEY_USR_ALL ;
 struct key* key_alloc (int *,char const*,int ,int ,struct cred const*,int,unsigned long) ;
 int key_instantiate_and_link (struct key*,int *,int ,struct key*,int *) ;
 int key_put (struct key*) ;
 int key_type_keyring ;

struct key *keyring_alloc(const char *description, uid_t uid, gid_t gid,
     const struct cred *cred, unsigned long flags,
     struct key *dest)
{
 struct key *keyring;
 int ret;

 keyring = key_alloc(&key_type_keyring, description,
       uid, gid, cred,
       (KEY_POS_ALL & ~KEY_POS_SETATTR) | KEY_USR_ALL,
       flags);

 if (!IS_ERR(keyring)) {
  ret = key_instantiate_and_link(keyring, ((void*)0), 0, dest, ((void*)0));
  if (ret < 0) {
   key_put(keyring);
   keyring = ERR_PTR(ret);
  }
 }

 return keyring;
}
