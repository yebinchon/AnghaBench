
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct hashtab_node {struct hashtab_node* next; } ;
struct hashtab_info {size_t slots_used; size_t max_chain_len; } ;
struct hashtab {size_t size; struct hashtab_node** htable; } ;



void hashtab_stat(struct hashtab *h, struct hashtab_info *info)
{
 u32 i, chain_len, slots_used, max_chain_len;
 struct hashtab_node *cur;

 slots_used = 0;
 max_chain_len = 0;
 for (slots_used = max_chain_len = i = 0; i < h->size; i++) {
  cur = h->htable[i];
  if (cur) {
   slots_used++;
   chain_len = 0;
   while (cur) {
    chain_len++;
    cur = cur->next;
   }

   if (chain_len > max_chain_len)
    max_chain_len = chain_len;
  }
 }

 info->slots_used = slots_used;
 info->max_chain_len = max_chain_len;
}
