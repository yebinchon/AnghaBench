
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
typedef int sle64 ;
typedef int s64 ;


 scalar_t__ NTFS_TIME_OFFSET ;
 int cpu_to_sle64 (scalar_t__) ;

__attribute__((used)) static inline sle64 utc2ntfs(const struct timespec ts)
{




 return cpu_to_sle64((s64)ts.tv_sec * 10000000 + ts.tv_nsec / 100 +
   NTFS_TIME_OFFSET);
}
