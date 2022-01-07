
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_extent {int ee_len; } ;


 int cpu_to_le16 (int ) ;
 int ext4_ext_get_actual_len (struct ext4_extent*) ;
 scalar_t__ ext4_ext_is_uninitialized (struct ext4_extent*) ;
 int ext4_ext_mark_uninitialized (struct ext4_extent*) ;

__attribute__((used)) static void
copy_extent_status(struct ext4_extent *src, struct ext4_extent *dest)
{
 if (ext4_ext_is_uninitialized(src))
  ext4_ext_mark_uninitialized(dest);
 else
  dest->ee_len = cpu_to_le16(ext4_ext_get_actual_len(dest));
}
