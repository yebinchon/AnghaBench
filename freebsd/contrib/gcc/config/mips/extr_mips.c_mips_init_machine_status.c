
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct machine_function {int dummy; } ;


 scalar_t__ ggc_alloc_cleared (int) ;

__attribute__((used)) static struct machine_function *
mips_init_machine_status (void)
{
  return ((struct machine_function *)
   ggc_alloc_cleared (sizeof (struct machine_function)));
}
