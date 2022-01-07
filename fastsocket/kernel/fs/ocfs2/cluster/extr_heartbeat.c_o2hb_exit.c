
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_remove (scalar_t__) ;
 scalar_t__ o2hb_debug_dir ;
 scalar_t__ o2hb_debug_livenodes ;

void o2hb_exit(void)
{
 if (o2hb_debug_livenodes)
  debugfs_remove(o2hb_debug_livenodes);
 if (o2hb_debug_dir)
  debugfs_remove(o2hb_debug_dir);
}
