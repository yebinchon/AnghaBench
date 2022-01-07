
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct list_head {scalar_t__ next; } ;
struct jbd2_revoke_record_s {unsigned long long blocknr; struct list_head hash; } ;
struct TYPE_6__ {int j_revoke_lock; TYPE_1__* j_revoke; } ;
typedef TYPE_2__ journal_t ;
struct TYPE_5__ {struct list_head* hash_table; } ;


 size_t hash (TYPE_2__*,unsigned long long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct jbd2_revoke_record_s *find_revoke_record(journal_t *journal,
            unsigned long long blocknr)
{
 struct list_head *hash_list;
 struct jbd2_revoke_record_s *record;

 hash_list = &journal->j_revoke->hash_table[hash(journal, blocknr)];

 spin_lock(&journal->j_revoke_lock);
 record = (struct jbd2_revoke_record_s *) hash_list->next;
 while (&(record->hash) != hash_list) {
  if (record->blocknr == blocknr) {
   spin_unlock(&journal->j_revoke_lock);
   return record;
  }
  record = (struct jbd2_revoke_record_s *) record->hash.next;
 }
 spin_unlock(&journal->j_revoke_lock);
 return ((void*)0);
}
