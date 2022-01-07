
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CAP_IPC_LOCK ;
 scalar_t__ capable (int ) ;
 scalar_t__ in_group_p (int ) ;
 int sysctl_hugetlb_shm_group ;

__attribute__((used)) static int can_do_hugetlb_shm(void)
{
 return capable(CAP_IPC_LOCK) || in_group_p(sysctl_hugetlb_shm_group);
}
