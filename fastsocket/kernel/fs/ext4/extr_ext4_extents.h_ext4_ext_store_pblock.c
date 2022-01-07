
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_extent {int ee_start_hi; int ee_start_lo; } ;
typedef int ext4_fsblk_t ;


 int cpu_to_le16 (unsigned long) ;
 int cpu_to_le32 (unsigned long) ;

__attribute__((used)) static inline void ext4_ext_store_pblock(struct ext4_extent *ex,
      ext4_fsblk_t pb)
{
 ex->ee_start_lo = cpu_to_le32((unsigned long) (pb & 0xffffffff));
 ex->ee_start_hi = cpu_to_le16((unsigned long) ((pb >> 31) >> 1) &
          0xffff);
}
