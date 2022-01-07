
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dquot {int dq_free; } ;
struct TYPE_2__ {int free_dquots; } ;


 TYPE_1__ dqstats ;
 int free_dquots ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static inline void put_dquot_last(struct dquot *dquot)
{
 list_add_tail(&dquot->dq_free, &free_dquots);
 dqstats.free_dquots++;
}
