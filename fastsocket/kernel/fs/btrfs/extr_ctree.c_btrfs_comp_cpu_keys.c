
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_key {scalar_t__ objectid; scalar_t__ type; scalar_t__ offset; } ;



int btrfs_comp_cpu_keys(struct btrfs_key *k1, struct btrfs_key *k2)
{
 if (k1->objectid > k2->objectid)
  return 1;
 if (k1->objectid < k2->objectid)
  return -1;
 if (k1->type > k2->type)
  return 1;
 if (k1->type < k2->type)
  return -1;
 if (k1->offset > k2->offset)
  return 1;
 if (k1->offset < k2->offset)
  return -1;
 return 0;
}
