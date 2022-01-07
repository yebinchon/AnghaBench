
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_sec; int tv_nsec; } ;
typedef int __le32 ;


 int EXT4_EPOCH_BITS ;
 int EXT4_EPOCH_MASK ;
 int EXT4_NSEC_MASK ;
 int cpu_to_le32 (int) ;

__attribute__((used)) static inline __le32 ext4_encode_extra_time(struct timespec *time)
{
       return cpu_to_le32((sizeof(time->tv_sec) > 4 ?
      (time->tv_sec >> 32) & EXT4_EPOCH_MASK : 0) |
                          ((time->tv_nsec << EXT4_EPOCH_BITS) & EXT4_NSEC_MASK));
}
