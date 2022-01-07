
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fold_deferring_overflow_warnings ;

void
fold_defer_overflow_warnings (void)
{
  ++fold_deferring_overflow_warnings;
}
