
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfsic_dev_state {int dummy; } ;
struct block_device {int dummy; } ;


 int btrfsic_dev_state_hashtable ;
 struct btrfsic_dev_state* btrfsic_dev_state_hashtable_lookup (struct block_device*,int *) ;

__attribute__((used)) static struct btrfsic_dev_state *btrfsic_dev_state_lookup(
  struct block_device *bdev)
{
 struct btrfsic_dev_state *ds;

 ds = btrfsic_dev_state_hashtable_lookup(bdev,
      &btrfsic_dev_state_hashtable);
 return ds;
}
