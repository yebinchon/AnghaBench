
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dquot {int dq_inuse; } ;
struct TYPE_2__ {int allocated_dquots; } ;


 TYPE_1__ dqstats ;
 int list_del (int *) ;

__attribute__((used)) static inline void remove_inuse(struct dquot *dquot)
{
 dqstats.allocated_dquots--;
 list_del(&dquot->dq_inuse);
}
