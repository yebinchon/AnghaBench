
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * stat_ptr ;
 int statement_list ;

void
lang_leave_group (void)
{
  stat_ptr = &statement_list;
}
