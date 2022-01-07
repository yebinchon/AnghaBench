
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t va_granularity ;

__attribute__((used)) static size_t
cygwin_gt_pch_alloc_granularity (void)
{
  return va_granularity;
}
