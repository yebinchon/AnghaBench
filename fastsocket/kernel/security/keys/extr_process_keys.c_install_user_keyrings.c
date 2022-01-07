
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_struct {int uid; struct key* session_keyring; struct key* uid_keyring; } ;
struct key {int dummy; } ;
struct cred {struct user_struct* user; } ;
typedef int gid_t ;


 scalar_t__ IS_ERR (struct key*) ;
 int KEY_ALLOC_IN_QUOTA ;
 int PTR_ERR (struct key*) ;
 struct cred* current_cred () ;
 struct key* find_keyring_by_name (char*,int) ;
 int kenter (char*,struct user_struct*,int) ;
 int key_link (struct key*,struct key*) ;
 int key_put (struct key*) ;
 int key_user_keyring_mutex ;
 struct key* keyring_alloc (char*,int,int ,struct cred const*,int ,int *) ;
 int kleave (char*,...) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;

int install_user_keyrings(void)
{
 struct user_struct *user;
 const struct cred *cred;
 struct key *uid_keyring, *session_keyring;
 char buf[20];
 int ret;

 cred = current_cred();
 user = cred->user;

 kenter("%p{%u}", user, user->uid);

 if (user->uid_keyring && user->session_keyring) {
  kleave(" = 0 [exist]");
  return 0;
 }

 mutex_lock(&key_user_keyring_mutex);
 ret = 0;

 if (!user->uid_keyring) {




  sprintf(buf, "_uid.%u", user->uid);

  uid_keyring = find_keyring_by_name(buf, 1);
  if (IS_ERR(uid_keyring)) {
   uid_keyring = keyring_alloc(buf, user->uid, (gid_t) -1,
          cred, KEY_ALLOC_IN_QUOTA,
          ((void*)0));
   if (IS_ERR(uid_keyring)) {
    ret = PTR_ERR(uid_keyring);
    goto error;
   }
  }



  sprintf(buf, "_uid_ses.%u", user->uid);

  session_keyring = find_keyring_by_name(buf, 1);
  if (IS_ERR(session_keyring)) {
   session_keyring =
    keyring_alloc(buf, user->uid, (gid_t) -1,
           cred, KEY_ALLOC_IN_QUOTA, ((void*)0));
   if (IS_ERR(session_keyring)) {
    ret = PTR_ERR(session_keyring);
    goto error_release;
   }



   ret = key_link(session_keyring, uid_keyring);
   if (ret < 0)
    goto error_release_both;
  }


  user->uid_keyring = uid_keyring;
  user->session_keyring = session_keyring;
 }

 mutex_unlock(&key_user_keyring_mutex);
 kleave(" = 0");
 return 0;

error_release_both:
 key_put(session_keyring);
error_release:
 key_put(uid_keyring);
error:
 mutex_unlock(&key_user_keyring_mutex);
 kleave(" = %d", ret);
 return ret;
}
