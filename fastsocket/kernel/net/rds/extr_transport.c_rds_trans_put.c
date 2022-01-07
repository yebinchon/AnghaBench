
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_transport {scalar_t__ t_owner; } ;


 int module_put (scalar_t__) ;

void rds_trans_put(struct rds_transport *trans)
{
 if (trans && trans->t_owner)
  module_put(trans->t_owner);
}
