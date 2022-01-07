
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfs_rq {int dummy; } ;
struct TYPE_2__ {struct cfs_rq cfs; } ;


 TYPE_1__* cpu_rq (int) ;

__attribute__((used)) static inline struct cfs_rq *cpu_cfs_rq(struct cfs_rq *cfs_rq, int this_cpu)
{
 return &cpu_rq(this_cpu)->cfs;
}
