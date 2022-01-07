
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct request_key_auth {struct key* dest_keyring; } ;
struct TYPE_4__ {struct request_key_auth* data; } ;
struct key {int sem; int flags; TYPE_1__ payload; } ;
struct cred {int jit_keyring; TYPE_3__* user; TYPE_2__* tgcred; struct key* thread_keyring; struct key* request_key_auth; } ;
struct TYPE_6__ {struct key* uid_keyring; struct key* session_keyring; } ;
struct TYPE_5__ {int session_keyring; struct key* process_keyring; } ;


 int BUG () ;
 int KEY_FLAG_REVOKED ;
 struct cred* current_cred () ;
 int down_read (int *) ;
 int kenter (char*,struct key*) ;
 struct key* key_get (struct key*) ;
 int key_serial (struct key*) ;
 int kleave (char*,int ) ;
 struct key* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int test_bit (int ,int *) ;
 int up_read (int *) ;

__attribute__((used)) static void construct_get_dest_keyring(struct key **_dest_keyring)
{
 struct request_key_auth *rka;
 const struct cred *cred = current_cred();
 struct key *dest_keyring = *_dest_keyring, *authkey;

 kenter("%p", dest_keyring);


 if (dest_keyring) {

  key_get(dest_keyring);
 } else {


  switch (cred->jit_keyring) {
  case 135:
  case 132:
   if (cred->request_key_auth) {
    authkey = cred->request_key_auth;
    down_read(&authkey->sem);
    rka = authkey->payload.data;
    if (!test_bit(KEY_FLAG_REVOKED,
           &authkey->flags))
     dest_keyring =
      key_get(rka->dest_keyring);
    up_read(&authkey->sem);
    if (dest_keyring)
     break;
   }

  case 130:
   dest_keyring = key_get(cred->thread_keyring);
   if (dest_keyring)
    break;

  case 133:
   dest_keyring = key_get(cred->tgcred->process_keyring);
   if (dest_keyring)
    break;

  case 131:
   rcu_read_lock();
   dest_keyring = key_get(
    rcu_dereference(cred->tgcred->session_keyring));
   rcu_read_unlock();

   if (dest_keyring)
    break;

  case 128:
   dest_keyring =
    key_get(cred->user->session_keyring);
   break;

  case 129:
   dest_keyring = key_get(cred->user->uid_keyring);
   break;

  case 134:
  default:
   BUG();
  }
 }

 *_dest_keyring = dest_keyring;
 kleave(" [dk %d]", key_serial(dest_keyring));
 return;
}
