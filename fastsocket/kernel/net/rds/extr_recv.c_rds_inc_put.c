
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rds_incoming {TYPE_2__* i_conn; int i_item; int i_refcount; } ;
struct TYPE_4__ {TYPE_1__* c_trans; } ;
struct TYPE_3__ {int (* inc_free ) (struct rds_incoming*) ;} ;


 int BUG_ON (int) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_read (int *) ;
 int list_empty (int *) ;
 int rdsdebug (char*,struct rds_incoming*,int ) ;
 int stub1 (struct rds_incoming*) ;

void rds_inc_put(struct rds_incoming *inc)
{
 rdsdebug("put inc %p ref %d\n", inc, atomic_read(&inc->i_refcount));
 if (atomic_dec_and_test(&inc->i_refcount)) {
  BUG_ON(!list_empty(&inc->i_item));

  inc->i_conn->c_trans->inc_free(inc);
 }
}
