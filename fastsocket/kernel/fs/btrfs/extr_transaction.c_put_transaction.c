
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rb_node; } ;
struct TYPE_4__ {int seq_head; TYPE_1__ root; } ;
struct btrfs_transaction {TYPE_2__ delayed_refs; int list; int use_count; } ;


 int BUG_ON (int) ;
 int WARN_ON (int) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ atomic_read (int *) ;
 int btrfs_transaction_cachep ;
 int kmem_cache_free (int ,struct btrfs_transaction*) ;
 int list_empty (int *) ;
 int memset (struct btrfs_transaction*,int ,int) ;

void put_transaction(struct btrfs_transaction *transaction)
{
 WARN_ON(atomic_read(&transaction->use_count) == 0);
 if (atomic_dec_and_test(&transaction->use_count)) {
  BUG_ON(!list_empty(&transaction->list));
  WARN_ON(transaction->delayed_refs.root.rb_node);
  WARN_ON(!list_empty(&transaction->delayed_refs.seq_head));
  memset(transaction, 0, sizeof(*transaction));
  kmem_cache_free(btrfs_transaction_cachep, transaction);
 }
}
