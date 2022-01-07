
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tc_u_knode {scalar_t__ handle; struct tc_u_knode* next; } ;
struct tc_u_hnode {unsigned int divisor; struct tc_u_knode** ht; } ;


 unsigned int TC_U32_HASH (scalar_t__) ;

__attribute__((used)) static __inline__ struct tc_u_knode *
u32_lookup_key(struct tc_u_hnode *ht, u32 handle)
{
 unsigned sel;
 struct tc_u_knode *n = ((void*)0);

 sel = TC_U32_HASH(handle);
 if (sel > ht->divisor)
  goto out;

 for (n = ht->ht[sel]; n; n = n->next)
  if (n->handle == handle)
   break;
out:
 return n;
}
