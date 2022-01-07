
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
typedef int __le64 ;


 scalar_t__ NTFS_TIME_OFFSET ;
 int do_div (scalar_t__,int) ;
 scalar_t__ le64_to_cpu (int ) ;

struct timespec
cifs_NTtimeToUnix(__le64 ntutc)
{
 struct timespec ts;



 u64 t;

 t = le64_to_cpu(ntutc) - NTFS_TIME_OFFSET;
 ts.tv_nsec = do_div(t, 10000000) * 100;
 ts.tv_sec = t;
 return ts;
}
