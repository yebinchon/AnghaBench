
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct timespec {int tv_sec; int tv_nsec; } ;


 int OCFS2_NSEC_MASK ;
 int OCFS2_SEC_SHIFT ;

__attribute__((used)) static u64 ocfs2_pack_timespec(struct timespec *spec)
{
 u64 res;
 u64 sec = spec->tv_sec;
 u32 nsec = spec->tv_nsec;

 res = (sec << OCFS2_SEC_SHIFT) | (nsec & OCFS2_NSEC_MASK);

 return res;
}
