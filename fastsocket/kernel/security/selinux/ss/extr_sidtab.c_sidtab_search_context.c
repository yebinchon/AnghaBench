
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sidtab_node {struct sidtab_node* next; int sid; int context; } ;
struct sidtab {struct sidtab_node** htable; } ;
struct context {int dummy; } ;


 int SIDTAB_SIZE ;
 scalar_t__ context_cmp (int *,struct context*) ;

__attribute__((used)) static inline u32 sidtab_search_context(struct sidtab *s,
        struct context *context)
{
 int i;
 struct sidtab_node *cur;

 for (i = 0; i < SIDTAB_SIZE; i++) {
  cur = s->htable[i];
  while (cur) {
   if (context_cmp(&cur->context, context))
    return cur->sid;
   cur = cur->next;
  }
 }
 return 0;
}
