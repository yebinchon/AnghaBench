
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct policydb {int cond_list; int te_cond_avtab; int bool_val_to_struct; } ;


 int avtab_destroy (int *) ;
 int cond_list_destroy (int ) ;
 int kfree (int ) ;

void cond_policydb_destroy(struct policydb *p)
{
 kfree(p->bool_val_to_struct);
 avtab_destroy(&p->te_cond_avtab);
 cond_list_destroy(p->cond_list);
}
