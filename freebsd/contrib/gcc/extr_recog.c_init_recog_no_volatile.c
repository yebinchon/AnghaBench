
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ volatile_ok ;

void
init_recog_no_volatile (void)
{
  volatile_ok = 0;
}
