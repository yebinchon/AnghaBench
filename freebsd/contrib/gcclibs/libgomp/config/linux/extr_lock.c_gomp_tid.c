
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYS_gettid ;
 int syscall (int ) ;

__attribute__((used)) static inline int gomp_tid (void)
{
  return syscall (SYS_gettid);
}
