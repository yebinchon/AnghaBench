
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dtrace_aggdata_t ;


 int DTRACE_AGGWALK_NEXT ;

__attribute__((used)) static int
count_aggregate(const dtrace_aggdata_t *agg, void *arg)
{
 *((size_t *)arg) += 1;

 return (DTRACE_AGGWALK_NEXT);
}
