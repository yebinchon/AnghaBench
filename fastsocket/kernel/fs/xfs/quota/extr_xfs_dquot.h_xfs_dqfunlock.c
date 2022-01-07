
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int q_flush; } ;
typedef TYPE_1__ xfs_dquot_t ;


 int complete (int *) ;

__attribute__((used)) static inline void xfs_dqfunlock(xfs_dquot_t *dqp)
{
 complete(&dqp->q_flush);
}
