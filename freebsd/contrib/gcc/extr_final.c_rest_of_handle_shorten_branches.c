
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_insns () ;
 int shorten_branches (int ) ;

__attribute__((used)) static unsigned int
rest_of_handle_shorten_branches (void)
{

  shorten_branches (get_insns ());
  return 0;
}
