
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cl_option_state {int dummy; } ;
struct TYPE_4__ {int flags; int * flag_var; } ;
struct TYPE_3__ {scalar_t__ check_pch_target_flags; } ;


 int CL_TARGET ;
 TYPE_2__* cl_options ;
 int get_option_state (int,struct cl_option_state*) ;
 int target_flags ;
 TYPE_1__ targetm ;

__attribute__((used)) static inline bool
option_affects_pch_p (int option, struct cl_option_state *state)
{
  if ((cl_options[option].flags & CL_TARGET) == 0)
    return 0;
  if (cl_options[option].flag_var == &target_flags)
    if (targetm.check_pch_target_flags)
      return 0;
  return get_option_state (option, state);
}
