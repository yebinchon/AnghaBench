
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ebt_table_info {scalar_t__* hook_entry; } ;
struct ebt_entry_target {int dummy; } ;
struct ebt_entry {int watchers_offset; int target_offset; int next_offset; int bitmask; } ;
struct ebt_entries {scalar_t__ policy; unsigned int counter_offset; unsigned int nentries; } ;


 int BUGPRINT (char*) ;
 scalar_t__ EBT_ACCEPT ;
 scalar_t__ EBT_DROP ;
 scalar_t__ EBT_RETURN ;
 int EINVAL ;
 int NF_BR_NUMHOOKS ;

__attribute__((used)) static inline int
ebt_check_entry_size_and_hooks(struct ebt_entry *e,
   struct ebt_table_info *newinfo,
   unsigned int *n, unsigned int *cnt,
   unsigned int *totalcnt, unsigned int *udc_cnt)
{
 int i;

 for (i = 0; i < NF_BR_NUMHOOKS; i++) {
  if ((void *)e == (void *)newinfo->hook_entry[i])
   break;
 }


 if (i != NF_BR_NUMHOOKS || !e->bitmask) {


  if (*n != *cnt) {
   BUGPRINT("nentries does not equal the nr of entries "
     "in the chain\n");
   return -EINVAL;
  }
  if (((struct ebt_entries *)e)->policy != EBT_DROP &&
     ((struct ebt_entries *)e)->policy != EBT_ACCEPT) {

   if (i != NF_BR_NUMHOOKS ||
      ((struct ebt_entries *)e)->policy != EBT_RETURN) {
    BUGPRINT("bad policy\n");
    return -EINVAL;
   }
  }
  if (i == NF_BR_NUMHOOKS)
   (*udc_cnt)++;
  if (((struct ebt_entries *)e)->counter_offset != *totalcnt) {
   BUGPRINT("counter_offset != totalcnt");
   return -EINVAL;
  }
  *n = ((struct ebt_entries *)e)->nentries;
  *cnt = 0;
  return 0;
 }

 if (sizeof(struct ebt_entry) > e->watchers_offset ||
    e->watchers_offset > e->target_offset ||
    e->target_offset >= e->next_offset) {
  BUGPRINT("entry offsets not in right order\n");
  return -EINVAL;
 }

 if (e->next_offset - e->target_offset < sizeof(struct ebt_entry_target)) {
  BUGPRINT("target size too small\n");
  return -EINVAL;
 }
 (*cnt)++;
 (*totalcnt)++;
 return 0;
}
