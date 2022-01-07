
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct policydb {int dummy; } ;
struct avtab_node {struct avtab_node* next; } ;
struct avtab {unsigned int nslot; struct avtab_node** htable; int nel; } ;
typedef int __le32 ;


 int avtab_write_item (struct policydb*,struct avtab_node*,void*) ;
 int cpu_to_le32 (int ) ;
 int put_entry (int *,int,int,void*) ;

int avtab_write(struct policydb *p, struct avtab *a, void *fp)
{
 unsigned int i;
 int rc = 0;
 struct avtab_node *cur;
 __le32 buf[1];

 buf[0] = cpu_to_le32(a->nel);
 rc = put_entry(buf, sizeof(u32), 1, fp);
 if (rc)
  return rc;

 for (i = 0; i < a->nslot; i++) {
  for (cur = a->htable[i]; cur; cur = cur->next) {
   rc = avtab_write_item(p, cur, fp);
   if (rc)
    return rc;
  }
 }

 return rc;
}
