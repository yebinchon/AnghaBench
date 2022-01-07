
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct machine_function {int func_type; } ;
typedef struct machine_function machine_function ;


 int ARM_FT_UNKNOWN ;
 scalar_t__ ggc_alloc_cleared (int) ;

__attribute__((used)) static struct machine_function *
arm_init_machine_status (void)
{
  struct machine_function *machine;
  machine = (machine_function *) ggc_alloc_cleared (sizeof (machine_function));




  return machine;
}
