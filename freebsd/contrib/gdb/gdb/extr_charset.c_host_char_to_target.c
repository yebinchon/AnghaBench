
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int host_char_to_target_baton ;
 int host_char_to_target_func (int ,int,int*) ;
 int stub1 (int ,int,int*) ;

int
host_char_to_target (int host_char, int *target_char)
{
  return ((*host_char_to_target_func)
          (host_char_to_target_baton, host_char, target_char));
}
