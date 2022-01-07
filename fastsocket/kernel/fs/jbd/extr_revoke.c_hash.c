
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct jbd_revoke_table_s {int hash_shift; int hash_size; } ;
struct TYPE_3__ {struct jbd_revoke_table_s* j_revoke; } ;
typedef TYPE_1__ journal_t ;



__attribute__((used)) static inline int hash(journal_t *journal, unsigned int block)
{
 struct jbd_revoke_table_s *table = journal->j_revoke;
 int hash_shift = table->hash_shift;

 return ((block << (hash_shift - 6)) ^
  (block >> 13) ^
  (block << (hash_shift - 12))) & (table->hash_size - 1);
}
