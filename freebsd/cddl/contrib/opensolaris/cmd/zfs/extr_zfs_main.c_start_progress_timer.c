
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B_FALSE ;
 scalar_t__ PROGRESS_DELAY ;
 scalar_t__ pt_begin ;
 int pt_shown ;
 scalar_t__ time (int *) ;

__attribute__((used)) static void
start_progress_timer(void)
{
 pt_begin = time(((void*)0)) + PROGRESS_DELAY;
 pt_shown = B_FALSE;
}
