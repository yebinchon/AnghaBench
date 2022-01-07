
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct key {long serial; } ;
struct cred {int gid; int uid; TYPE_2__* tgcred; } ;
struct TYPE_4__ {TYPE_1__* session_keyring; } ;
struct TYPE_3__ {long serial; } ;


 long EMLINK ;
 long ENOKEY ;
 long ENOMEM ;
 scalar_t__ IS_ERR (struct key*) ;
 int KEY_ALLOC_IN_QUOTA ;
 long PTR_ERR (struct key*) ;
 int abort_creds (struct cred*) ;
 long commit_creds (struct cred*) ;
 struct cred* current_cred () ;
 int current_is_single_threaded () ;
 struct key* find_keyring_by_name (char const*,int) ;
 long install_session_keyring_to_cred (struct cred*,struct key*) ;
 int key_put (struct key*) ;
 int key_session_mutex ;
 struct key* keyring_alloc (char const*,int ,int ,struct cred const*,int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct cred* prepare_creds () ;

long join_session_keyring(const char *name)
{
 const struct cred *old;
 struct cred *new;
 struct key *keyring;
 long ret, serial;




 if (!current_is_single_threaded())
  return -EMLINK;

 new = prepare_creds();
 if (!new)
  return -ENOMEM;
 old = current_cred();


 if (!name) {
  ret = install_session_keyring_to_cred(new, ((void*)0));
  if (ret < 0)
   goto error;

  serial = new->tgcred->session_keyring->serial;
  ret = commit_creds(new);
  if (ret == 0)
   ret = serial;
  goto okay;
 }


 mutex_lock(&key_session_mutex);


 keyring = find_keyring_by_name(name, 0);
 if (PTR_ERR(keyring) == -ENOKEY) {

  keyring = keyring_alloc(name, old->uid, old->gid, old,
     KEY_ALLOC_IN_QUOTA, ((void*)0));
  if (IS_ERR(keyring)) {
   ret = PTR_ERR(keyring);
   goto error2;
  }
 } else if (IS_ERR(keyring)) {
  ret = PTR_ERR(keyring);
  goto error2;
 }


 ret = install_session_keyring_to_cred(new, keyring);
 if (ret < 0)
  goto error2;

 commit_creds(new);
 mutex_unlock(&key_session_mutex);

 ret = keyring->serial;
 key_put(keyring);
okay:
 return ret;

error2:
 mutex_unlock(&key_session_mutex);
error:
 abort_creds(new);
 return ret;
}
