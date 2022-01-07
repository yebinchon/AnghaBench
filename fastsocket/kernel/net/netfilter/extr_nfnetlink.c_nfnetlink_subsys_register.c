
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfnetlink_subsystem {size_t subsys_id; } ;


 int EBUSY ;
 int nfnl_lock () ;
 int nfnl_unlock () ;
 struct nfnetlink_subsystem const** subsys_table ;

int nfnetlink_subsys_register(const struct nfnetlink_subsystem *n)
{
 nfnl_lock();
 if (subsys_table[n->subsys_id]) {
  nfnl_unlock();
  return -EBUSY;
 }
 subsys_table[n->subsys_id] = n;
 nfnl_unlock();

 return 0;
}
