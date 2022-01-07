
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int split_all_insns (int) ;

__attribute__((used)) static unsigned int
rest_of_handle_split_all_insns (void)
{
  split_all_insns (1);
  return 0;
}
