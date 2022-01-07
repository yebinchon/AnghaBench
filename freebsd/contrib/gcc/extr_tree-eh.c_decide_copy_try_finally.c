
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int estimate_num_insns (int ) ;
 int optimize ;
 scalar_t__ optimize_size ;

__attribute__((used)) static bool
decide_copy_try_finally (int ndests, tree finally)
{
  int f_estimate, sw_estimate;

  if (!optimize)
    return 0;


  f_estimate = estimate_num_insns (finally);
  f_estimate = (f_estimate + 1) * ndests;


  sw_estimate = 10 + 2 * ndests;


  if (optimize_size)
    return f_estimate < sw_estimate;


  if (optimize > 1)
    return f_estimate < 100 || f_estimate < sw_estimate * 2;
  else
    return f_estimate < 40 || f_estimate * 2 < sw_estimate * 3;
}
