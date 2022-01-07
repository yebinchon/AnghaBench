
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nprim; } ;
struct policydb {struct cond_bool_datum** bool_val_to_struct; TYPE_1__ p_bools; } ;
struct cond_bool_datum {int dummy; } ;


 int GFP_KERNEL ;
 int kfree (struct cond_bool_datum**) ;
 scalar_t__ kmalloc (int,int ) ;

int cond_init_bool_indexes(struct policydb *p)
{
 kfree(p->bool_val_to_struct);
 p->bool_val_to_struct = (struct cond_bool_datum **)
  kmalloc(p->p_bools.nprim * sizeof(struct cond_bool_datum *), GFP_KERNEL);
 if (!p->bool_val_to_struct)
  return -1;
 return 0;
}
