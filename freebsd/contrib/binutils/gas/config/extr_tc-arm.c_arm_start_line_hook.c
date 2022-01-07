
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * last_label_seen ;

void
arm_start_line_hook (void)
{
  last_label_seen = ((void*)0);
}
