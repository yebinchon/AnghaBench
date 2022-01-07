
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfsic_dev_state {scalar_t__ magic_num; } ;


 scalar_t__ BTRFSIC_DEV2STATE_MAGIC_NUMBER ;
 int BUG_ON (int) ;
 int kfree (struct btrfsic_dev_state*) ;

__attribute__((used)) static void btrfsic_dev_state_free(struct btrfsic_dev_state *ds)
{
 BUG_ON(!(((void*)0) == ds ||
   BTRFSIC_DEV2STATE_MAGIC_NUMBER == ds->magic_num));
 kfree(ds);
}
