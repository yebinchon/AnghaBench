
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nprim; int table; } ;
struct TYPE_3__ {int nprim; int table; } ;
struct policydb {TYPE_2__ p_classes; void* p_class_val_to_name; void* class_val_to_struct; TYPE_1__ p_commons; void* p_common_val_to_name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int class_index ;
 int common_index ;
 int hashtab_map (int ,int ,struct policydb*) ;
 void* kmalloc (int,int ) ;

__attribute__((used)) static int policydb_index_classes(struct policydb *p)
{
 int rc;

 p->p_common_val_to_name =
  kmalloc(p->p_commons.nprim * sizeof(char *), GFP_KERNEL);
 if (!p->p_common_val_to_name) {
  rc = -ENOMEM;
  goto out;
 }

 rc = hashtab_map(p->p_commons.table, common_index, p);
 if (rc)
  goto out;

 p->class_val_to_struct =
  kmalloc(p->p_classes.nprim * sizeof(*(p->class_val_to_struct)), GFP_KERNEL);
 if (!p->class_val_to_struct) {
  rc = -ENOMEM;
  goto out;
 }

 p->p_class_val_to_name =
  kmalloc(p->p_classes.nprim * sizeof(char *), GFP_KERNEL);
 if (!p->p_class_val_to_name) {
  rc = -ENOMEM;
  goto out;
 }

 rc = hashtab_map(p->p_classes.table, class_index, p);
out:
 return rc;
}
