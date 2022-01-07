
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int sid; } ;
struct sel_netnode {TYPE_1__ nsec; } ;


 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct sel_netnode* sel_netnode_find (void*,int ) ;
 int sel_netnode_sid_slow (void*,int ,int *) ;

int sel_netnode_sid(void *addr, u16 family, u32 *sid)
{
 struct sel_netnode *node;

 rcu_read_lock();
 node = sel_netnode_find(addr, family);
 if (node != ((void*)0)) {
  *sid = node->nsec.sid;
  rcu_read_unlock();
  return 0;
 }
 rcu_read_unlock();

 return sel_netnode_sid_slow(addr, family, sid);
}
