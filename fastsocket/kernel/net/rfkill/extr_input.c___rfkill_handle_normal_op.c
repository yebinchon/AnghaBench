
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rfkill_type { ____Placeholder_rfkill_type } rfkill_type ;


 int rfkill_get_global_sw_state (int const) ;
 int rfkill_switch_all (int const,int) ;

__attribute__((used)) static void __rfkill_handle_normal_op(const enum rfkill_type type,
          const bool complement)
{
 bool blocked;

 blocked = rfkill_get_global_sw_state(type);
 if (complement)
  blocked = !blocked;

 rfkill_switch_all(type, blocked);
}
