
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct policydb {int te_cond_avtab; int * cond_list; int * bool_val_to_struct; } ;


 int avtab_init (int *) ;

int cond_policydb_init(struct policydb *p)
{
 int rc;

 p->bool_val_to_struct = ((void*)0);
 p->cond_list = ((void*)0);

 rc = avtab_init(&p->te_cond_avtab);
 if (rc)
  return rc;

 return 0;
}
