
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_group {int dummy; } ;
struct cfs_bandwidth {int dummy; } ;



__attribute__((used)) static inline struct cfs_bandwidth *tg_cfs_bandwidth(struct task_group *tg)
{
 return ((void*)0);
}
