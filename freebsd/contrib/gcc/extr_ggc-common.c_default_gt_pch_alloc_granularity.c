
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t getpagesize () ;

size_t
default_gt_pch_alloc_granularity (void)
{
  return getpagesize();
}
