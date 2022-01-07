
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int DO_SPECULATION ;
 scalar_t__ PROCESSOR_ITANIUM ;
 int * add_cycles ;
 int * clocks ;
 int clocks_length ;
 TYPE_1__* current_sched_info ;
 int get_max_uid () ;
 scalar_t__ ia64_tune ;
 int max_uid ;
 int * spec_check_no ;
 int * stops_p ;
 int * xrecalloc (int *,int,int,int) ;

__attribute__((used)) static void
ia64_h_i_d_extended (void)
{
  if (current_sched_info->flags & DO_SPECULATION)
    {
      int new_max_uid = get_max_uid () + 1;

      spec_check_no = xrecalloc (spec_check_no, new_max_uid,
     max_uid, sizeof (*spec_check_no));
      max_uid = new_max_uid;
    }

  if (stops_p != ((void*)0))
    {
      int new_clocks_length = get_max_uid () + 1;

      stops_p = xrecalloc (stops_p, new_clocks_length, clocks_length, 1);

      if (ia64_tune == PROCESSOR_ITANIUM)
 {
   clocks = xrecalloc (clocks, new_clocks_length, clocks_length,
         sizeof (int));
   add_cycles = xrecalloc (add_cycles, new_clocks_length, clocks_length,
      sizeof (int));
 }

      clocks_length = new_clocks_length;
    }
}
