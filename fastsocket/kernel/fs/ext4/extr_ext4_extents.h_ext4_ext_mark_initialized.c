
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_extent {int ee_len; } ;


 int cpu_to_le16 (int ) ;
 int ext4_ext_get_actual_len (struct ext4_extent*) ;

__attribute__((used)) static inline void ext4_ext_mark_initialized(struct ext4_extent *ext)
{
 ext->ee_len = cpu_to_le16(ext4_ext_get_actual_len(ext));
}
