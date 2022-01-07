
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_device_info {scalar_t__ max_avail; scalar_t__ total_avail; } ;



__attribute__((used)) static int btrfs_cmp_device_info(const void *a, const void *b)
{
 const struct btrfs_device_info *di_a = a;
 const struct btrfs_device_info *di_b = b;

 if (di_a->max_avail > di_b->max_avail)
  return -1;
 if (di_a->max_avail < di_b->max_avail)
  return 1;
 if (di_a->total_avail > di_b->total_avail)
  return -1;
 if (di_a->total_avail < di_b->total_avail)
  return 1;
 return 0;
}
