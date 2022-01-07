
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct napi_struct {int gro_list; int state; int poll_list; } ;


 int BUG_ON (int) ;
 int NAPI_STATE_SCHED ;
 int clear_bit (int ,int *) ;
 int list_del (int *) ;
 int smp_mb__before_clear_bit () ;
 int test_bit (int ,int *) ;

void __napi_complete(struct napi_struct *n)
{
 BUG_ON(!test_bit(NAPI_STATE_SCHED, &n->state));
 BUG_ON(n->gro_list);

 list_del(&n->poll_list);
 smp_mb__before_clear_bit();
 clear_bit(NAPI_STATE_SCHED, &n->state);
}
