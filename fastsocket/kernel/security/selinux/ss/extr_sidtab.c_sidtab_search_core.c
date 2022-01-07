
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct context {scalar_t__ len; } ;
struct sidtab_node {scalar_t__ sid; struct context context; struct sidtab_node* next; } ;
struct sidtab {struct sidtab_node** htable; } ;


 scalar_t__ SECINITSID_UNLABELED ;
 int SIDTAB_HASH (scalar_t__) ;

__attribute__((used)) static struct context *sidtab_search_core(struct sidtab *s, u32 sid, int force)
{
 int hvalue;
 struct sidtab_node *cur;

 if (!s)
  return ((void*)0);

 hvalue = SIDTAB_HASH(sid);
 cur = s->htable[hvalue];
 while (cur && sid > cur->sid)
  cur = cur->next;

 if (force && cur && sid == cur->sid && cur->context.len)
  return &cur->context;

 if (cur == ((void*)0) || sid != cur->sid || cur->context.len) {

  sid = SECINITSID_UNLABELED;
  hvalue = SIDTAB_HASH(sid);
  cur = s->htable[hvalue];
  while (cur && sid > cur->sid)
   cur = cur->next;
  if (!cur || sid != cur->sid)
   return ((void*)0);
 }

 return &cur->context;
}
