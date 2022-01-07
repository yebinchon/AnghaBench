
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dquot {int dq_inuse; } ;
struct TYPE_2__ {int allocated_dquots; } ;


 TYPE_1__ dqstats ;
 int inuse_list ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static inline void put_inuse(struct dquot *dquot)
{


 list_add_tail(&dquot->dq_inuse, &inuse_list);
 dqstats.allocated_dquots++;
}
