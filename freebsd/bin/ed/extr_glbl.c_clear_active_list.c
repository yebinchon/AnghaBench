
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPL0 () ;
 int SPL1 () ;
 scalar_t__ active_last ;
 int * active_list ;
 scalar_t__ active_ndx ;
 scalar_t__ active_ptr ;
 scalar_t__ active_size ;
 int free (int *) ;

void
clear_active_list(void)
{
 SPL1();
 active_size = active_last = active_ptr = active_ndx = 0;
 free(active_list);
 active_list = ((void*)0);
 SPL0();
}
