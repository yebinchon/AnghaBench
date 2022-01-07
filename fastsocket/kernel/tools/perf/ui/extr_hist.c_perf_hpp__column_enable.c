
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cond; } ;


 int BUG_ON (int) ;
 unsigned int PERF_HPP__MAX_INDEX ;
 TYPE_1__* perf_hpp__format ;

void perf_hpp__column_enable(unsigned col, bool enable)
{
 BUG_ON(col >= PERF_HPP__MAX_INDEX);
 perf_hpp__format[col].cond = enable;
}
