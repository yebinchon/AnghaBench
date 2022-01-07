
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parsed_partitions {int dummy; } ;
struct TYPE_2__ {unsigned long config_start; } ;
struct ldmdb {int v_part; int v_comp; int v_volu; int v_disk; int v_dgrp; TYPE_1__ ph; } ;
struct block_device {int dummy; } ;


 int BUG_ON (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int kfree (struct ldmdb*) ;
 struct ldmdb* kmalloc (int,int ) ;
 scalar_t__ ldm_create_data_partitions (struct parsed_partitions*,struct ldmdb*) ;
 int ldm_crit (char*) ;
 int ldm_debug (char*) ;
 int ldm_free_vblks (int *) ;
 int ldm_get_vblks (struct block_device*,unsigned long,struct ldmdb*) ;
 int ldm_validate_partition_table (struct block_device*) ;
 int ldm_validate_privheads (struct block_device*,TYPE_1__*) ;
 int ldm_validate_tocblocks (struct block_device*,unsigned long,struct ldmdb*) ;
 int ldm_validate_vmdb (struct block_device*,unsigned long,struct ldmdb*) ;

int ldm_partition (struct parsed_partitions *pp, struct block_device *bdev)
{
 struct ldmdb *ldb;
 unsigned long base;
 int result = -1;

 BUG_ON (!pp || !bdev);


 if (!ldm_validate_partition_table (bdev))
  return 0;

 ldb = kmalloc (sizeof (*ldb), GFP_KERNEL);
 if (!ldb) {
  ldm_crit ("Out of memory.");
  goto out;
 }


 if (!ldm_validate_privheads (bdev, &ldb->ph))
  goto out;


 base = ldb->ph.config_start;


 if (!ldm_validate_tocblocks (bdev, base, ldb) ||
     !ldm_validate_vmdb (bdev, base, ldb))
      goto out;


 INIT_LIST_HEAD (&ldb->v_dgrp);
 INIT_LIST_HEAD (&ldb->v_disk);
 INIT_LIST_HEAD (&ldb->v_volu);
 INIT_LIST_HEAD (&ldb->v_comp);
 INIT_LIST_HEAD (&ldb->v_part);

 if (!ldm_get_vblks (bdev, base, ldb)) {
  ldm_crit ("Failed to read the VBLKs from the database.");
  goto cleanup;
 }


 if (ldm_create_data_partitions (pp, ldb)) {
  ldm_debug ("Parsed LDM database successfully.");
  result = 1;
 }


cleanup:
 ldm_free_vblks (&ldb->v_dgrp);
 ldm_free_vblks (&ldb->v_disk);
 ldm_free_vblks (&ldb->v_volu);
 ldm_free_vblks (&ldb->v_comp);
 ldm_free_vblks (&ldb->v_part);
out:
 kfree (ldb);
 return result;
}
