
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_transport {scalar_t__ (* laddr_check ) (int ) ;int t_owner; } ;
typedef int __be32 ;


 scalar_t__ IN_LOOPBACK (int ) ;
 unsigned int RDS_TRANS_COUNT ;
 int down_read (int *) ;
 int ntohl (int ) ;
 struct rds_transport rds_loop_transport ;
 int rds_trans_sem ;
 scalar_t__ stub1 (int ) ;
 struct rds_transport** transports ;
 scalar_t__ try_module_get (int ) ;
 int up_read (int *) ;

struct rds_transport *rds_trans_get_preferred(__be32 addr)
{
 struct rds_transport *ret = ((void*)0);
 struct rds_transport *trans;
 unsigned int i;

 if (IN_LOOPBACK(ntohl(addr)))
  return &rds_loop_transport;

 down_read(&rds_trans_sem);
 for (i = 0; i < RDS_TRANS_COUNT; i++) {
  trans = transports[i];

  if (trans && (trans->laddr_check(addr) == 0) &&
      (!trans->t_owner || try_module_get(trans->t_owner))) {
   ret = trans;
   break;
  }
 }
 up_read(&rds_trans_sem);

 return ret;
}
