
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;


 int NTFS_TIME_OFFSET ;

__attribute__((used)) static u64
smb_unixutc2ntutc(struct timespec ts)
{


 return ((u64)ts.tv_sec) * 10000000 + ts.tv_nsec/100 + NTFS_TIME_OFFSET;
}
