
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 int PERF_COUNT_HW_MAX ;
 int PERF_COUNT_SW_MAX ;
 scalar_t__ PERF_TYPE_SOFTWARE ;
 int __print_events_type (scalar_t__,int ,int ) ;
 int event_symbols_hw ;
 int event_symbols_sw ;

void print_events_type(u8 type)
{
 if (type == PERF_TYPE_SOFTWARE)
  __print_events_type(type, event_symbols_sw, PERF_COUNT_SW_MAX);
 else
  __print_events_type(type, event_symbols_hw, PERF_COUNT_HW_MAX);
}
