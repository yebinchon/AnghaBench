
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {size_t sk_protocol; } ;
struct netlink_sock {unsigned int ngroups; int groups; } ;
struct TYPE_2__ {unsigned int groups; int registered; } ;


 int ENOENT ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int NLGRPSZ (unsigned int) ;
 unsigned long* krealloc (int ,int,int ) ;
 int memset (char*,int ,int) ;
 int netlink_table_grab () ;
 int netlink_table_ungrab () ;
 TYPE_1__* nl_table ;
 struct netlink_sock* nlk_sk (struct sock*) ;

__attribute__((used)) static int netlink_realloc_groups(struct sock *sk)
{
 struct netlink_sock *nlk = nlk_sk(sk);
 unsigned int groups;
 unsigned long *new_groups;
 int err = 0;

 netlink_table_grab();

 groups = nl_table[sk->sk_protocol].groups;
 if (!nl_table[sk->sk_protocol].registered) {
  err = -ENOENT;
  goto out_unlock;
 }

 if (nlk->ngroups >= groups)
  goto out_unlock;

 new_groups = krealloc(nlk->groups, NLGRPSZ(groups), GFP_ATOMIC);
 if (new_groups == ((void*)0)) {
  err = -ENOMEM;
  goto out_unlock;
 }
 memset((char *)new_groups + NLGRPSZ(nlk->ngroups), 0,
        NLGRPSZ(groups) - NLGRPSZ(nlk->ngroups));

 nlk->groups = new_groups;
 nlk->ngroups = groups;
 out_unlock:
 netlink_table_ungrab();
 return err;
}
