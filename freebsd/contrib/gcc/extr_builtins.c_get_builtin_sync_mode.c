
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int BITS_PER_UNIT ;
 int MODE_INT ;
 int mode_for_size (int,int ,int ) ;

__attribute__((used)) static inline enum machine_mode
get_builtin_sync_mode (int fcode_diff)
{


  return mode_for_size (BITS_PER_UNIT << fcode_diff, MODE_INT, 0);
}
