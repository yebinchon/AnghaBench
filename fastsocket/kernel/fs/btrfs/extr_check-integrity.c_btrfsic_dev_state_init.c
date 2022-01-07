
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_iodone; struct btrfsic_dev_state* dev_state; } ;
struct btrfsic_dev_state {char* name; TYPE_1__ dummy_block_for_bio_bh_flush; scalar_t__ last_flush_gen; int collision_resolving_node; int * state; int * bdev; int magic_num; } ;


 int BTRFSIC_DEV2STATE_MAGIC_NUMBER ;
 int INIT_LIST_HEAD (int *) ;
 int btrfsic_block_init (TYPE_1__*) ;

__attribute__((used)) static void btrfsic_dev_state_init(struct btrfsic_dev_state *ds)
{
 ds->magic_num = BTRFSIC_DEV2STATE_MAGIC_NUMBER;
 ds->bdev = ((void*)0);
 ds->state = ((void*)0);
 ds->name[0] = '\0';
 INIT_LIST_HEAD(&ds->collision_resolving_node);
 ds->last_flush_gen = 0;
 btrfsic_block_init(&ds->dummy_block_for_bio_bh_flush);
 ds->dummy_block_for_bio_bh_flush.is_iodone = 1;
 ds->dummy_block_for_bio_bh_flush.dev_state = ds;
}
