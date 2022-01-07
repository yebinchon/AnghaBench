
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rpcb_clnt_lock ;
 int rpcb_users ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int rpcb_get_local(void)
{
 int cnt;

 spin_lock(&rpcb_clnt_lock);
 if (rpcb_users)
  rpcb_users++;
 cnt = rpcb_users;
 spin_unlock(&rpcb_clnt_lock);

 return cnt;
}
