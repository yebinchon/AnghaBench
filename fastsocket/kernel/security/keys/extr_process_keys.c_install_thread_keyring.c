
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {int thread_keyring; } ;


 int BUG_ON (int ) ;
 int ENOMEM ;
 int abort_creds (struct cred*) ;
 int commit_creds (struct cred*) ;
 int install_thread_keyring_to_cred (struct cred*) ;
 struct cred* prepare_creds () ;

__attribute__((used)) static int install_thread_keyring(void)
{
 struct cred *new;
 int ret;

 new = prepare_creds();
 if (!new)
  return -ENOMEM;

 BUG_ON(new->thread_keyring);

 ret = install_thread_keyring_to_cred(new);
 if (ret < 0) {
  abort_creds(new);
  return ret;
 }

 return commit_creds(new);
}
