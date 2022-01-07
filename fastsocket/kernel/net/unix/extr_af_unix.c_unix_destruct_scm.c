
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct scm_cookie {int cred; int pid; } ;
typedef int scm ;
struct TYPE_2__ {scalar_t__ fp; int cred; int pid; } ;


 TYPE_1__ UNIXCB (struct sk_buff*) ;
 int memset (struct scm_cookie*,int ,int) ;
 int scm_destroy (struct scm_cookie*) ;
 int sock_wfree (struct sk_buff*) ;
 int unix_detach_fds (struct scm_cookie*,struct sk_buff*) ;

__attribute__((used)) static void unix_destruct_scm(struct sk_buff *skb)
{
 struct scm_cookie scm;
 memset(&scm, 0, sizeof(scm));
 scm.pid = UNIXCB(skb).pid;
 scm.cred = UNIXCB(skb).cred;
 if (UNIXCB(skb).fp)
  unix_detach_fds(&scm, skb);



 scm_destroy(&scm);
 sock_wfree(skb);
}
