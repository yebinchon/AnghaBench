
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_group_cred {int rcu; int usage; } ;
struct cred {struct thread_group_cred* tgcred; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int call_rcu (int *,int ) ;
 int release_tgcred_rcu ;

__attribute__((used)) static void release_tgcred(struct cred *cred)
{






}
