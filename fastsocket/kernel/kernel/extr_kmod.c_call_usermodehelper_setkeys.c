
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_group_cred {int session_keyring; } ;
struct subprocess_info {TYPE_1__* cred; } ;
struct key {int dummy; } ;
struct TYPE_2__ {struct thread_group_cred* tgcred; } ;


 int BUG () ;
 int key_get (struct key*) ;
 int key_put (int ) ;

void call_usermodehelper_setkeys(struct subprocess_info *info,
     struct key *session_keyring)
{





 BUG();

}
