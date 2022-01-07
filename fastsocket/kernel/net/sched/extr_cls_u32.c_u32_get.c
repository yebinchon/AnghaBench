
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcf_proto {struct tc_u_hnode* root; struct tc_u_common* data; } ;
struct tc_u_hnode {int dummy; } ;
struct tc_u_common {int dummy; } ;


 scalar_t__ TC_U32_HTID (int ) ;
 scalar_t__ TC_U32_KEY (int ) ;
 scalar_t__ TC_U32_ROOT ;
 struct tc_u_hnode* u32_lookup_ht (struct tc_u_common*,scalar_t__) ;
 scalar_t__ u32_lookup_key (struct tc_u_hnode*,int ) ;

__attribute__((used)) static unsigned long u32_get(struct tcf_proto *tp, u32 handle)
{
 struct tc_u_hnode *ht;
 struct tc_u_common *tp_c = tp->data;

 if (TC_U32_HTID(handle) == TC_U32_ROOT)
  ht = tp->root;
 else
  ht = u32_lookup_ht(tp_c, TC_U32_HTID(handle));

 if (!ht)
  return 0;

 if (TC_U32_KEY(handle) == 0)
  return (unsigned long)ht;

 return (unsigned long)u32_lookup_key(ht, handle);
}
