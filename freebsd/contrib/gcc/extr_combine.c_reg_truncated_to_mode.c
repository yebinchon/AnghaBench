
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_2__ {int truncated_to_mode; scalar_t__ truncation_label; } ;


 int GET_MODE_BITSIZE (int) ;
 scalar_t__ GET_MODE_SIZE (int) ;
 size_t REGNO (int ) ;
 scalar_t__ TRULY_NOOP_TRUNCATION (int ,int ) ;
 scalar_t__ label_tick ;
 TYPE_1__* reg_stat ;

__attribute__((used)) static bool
reg_truncated_to_mode (enum machine_mode mode, rtx x)
{
  enum machine_mode truncated = reg_stat[REGNO (x)].truncated_to_mode;

  if (truncated == 0 || reg_stat[REGNO (x)].truncation_label != label_tick)
    return 0;
  if (GET_MODE_SIZE (truncated) <= GET_MODE_SIZE (mode))
    return 1;
  if (TRULY_NOOP_TRUNCATION (GET_MODE_BITSIZE (mode),
        GET_MODE_BITSIZE (truncated)))
    return 1;
  return 0;
}
