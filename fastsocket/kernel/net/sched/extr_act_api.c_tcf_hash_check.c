
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tcf_hashinfo {int dummy; } ;
struct tcf_common {int tcfc_refcnt; int tcfc_bindcnt; } ;
struct tc_action {struct tcf_common* priv; } ;


 struct tcf_common* tcf_hash_lookup (scalar_t__,struct tcf_hashinfo*) ;

struct tcf_common *tcf_hash_check(u32 index, struct tc_action *a, int bind,
      struct tcf_hashinfo *hinfo)
{
 struct tcf_common *p = ((void*)0);
 if (index && (p = tcf_hash_lookup(index, hinfo)) != ((void*)0)) {
  if (bind)
   p->tcfc_bindcnt++;
  p->tcfc_refcnt++;
  a->priv = p;
 }
 return p;
}
