
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_sec; int tv_nsec; } ;
typedef int __u64 ;
typedef int __le32 ;


 int EXT4_EPOCH_BITS ;
 int EXT4_EPOCH_MASK ;
 int EXT4_NSEC_MASK ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static inline void ext4_decode_extra_time(struct timespec *time, __le32 extra)
{
       if (sizeof(time->tv_sec) > 4)
        time->tv_sec |= (__u64)(le32_to_cpu(extra) & EXT4_EPOCH_MASK)
          << 32;
       time->tv_nsec = (le32_to_cpu(extra) & EXT4_NSEC_MASK) >> EXT4_EPOCH_BITS;
}
